# 06 — Tri-State Multi-Tax Payroll Reconciliation Engine (Bash)

Um motor de auditoria em Bash que **confere planilhas de folha de pagamento** de empresas que operam no corredor de Nova York (NY), Connecticut (CT) e Massachusetts (MA), apontando retenções de impostos e contribuições que parecem incorretas ou inconsistentes.

Este documento explica **o problema, o raciocínio por trás do desenho e como cada peça funciona**, sem entrar em código.

> **Aviso importante:** este projeto é uma ferramenta de **triagem para revisão profissional**. Regras tributárias são complexas, mudam com frequência e têm exceções. O resultado do script deve ser avaliado por contadores ou advogados tributaristas, e não tratado como parecer fiscal.

---

## 1. O problema que o projeto resolve

O trabalho remoto e híbrido criou um problema novo para a folha de pagamento. Um funcionário pode ser contratado por uma empresa com sede em Nova York ou Boston, mas trabalhar de casa em Stamford (CT) ou Cambridge (MA). Isso levanta perguntas que antes quase não existiam:

- Para qual estado esse funcionário deve pagar imposto de renda?
- Qual estado deve reter na fonte?
- As contribuições estaduais (como licença familiar e médica) estão sendo descontadas no estado certo e no valor certo?

Errar em qualquer uma dessas perguntas gera risco real: retenção insuficiente, retenção em dobro, multas e retrabalho. Com centenas de funcionários, conferir tudo à mão é inviável.

O projeto automatiza uma **primeira passada de conferência** sobre a planilha da folha, produzindo uma lista de exceções para a equipe de auditoria investigar.

### Cenário de negócios (NY / CT / MA — trabalho remoto e fiscalidade cruzada)
Equipes sediadas em Nova York ou Boston têm funcionários que trabalham remotamente a partir de Connecticut ou Massachusetts. O script audita a folha para identificar três tipos de problema:

- Possíveis violações da regra de conveniência do empregador de Nova York.
- Descontos incorretos da contribuição de licença familiar e médica de Massachusetts.
- Retenções cruzadas envolvendo Connecticut.

---

## 2. Vocabulário essencial

- **Regra de conveniência do empregador (Convenience of the Employer):** regra de Nova York segundo a qual, em linhas gerais, um não residente que trabalha remotamente para um empregador de NY pode ter essa renda tributada por NY se o trabalho remoto for uma escolha pessoal, e não uma necessidade do empregador. Detalhes e exceções importam muito.
- **Retenção na fonte (withholding):** valor descontado do salário pela empresa e repassado ao governo.
- **PFML (Paid Family and Medical Leave):** programa de licença familiar e médica remunerada de Massachusetts, financiado por contribuições sobre os salários.
- **Estado de residência vs. estado de trabalho:** o primeiro é onde a pessoa mora, o segundo é onde o trabalho é realizado. Muitas das regras dependem dessa distinção.
- **Crédito por imposto pago a outro estado:** mecanismo que tenta evitar que a mesma renda seja tributada duas vezes por estados diferentes.
- **Reconciliação:** comparar duas fontes (o que deveria ter sido retido e o que foi realmente retido) e apontar diferenças.
- **SSN / EIN:** número de seguro social de uma pessoa e número de identificação de um empregador, respectivamente.

---

## 3. Como o motor funciona, passo a passo

1. **Lê a planilha da folha.** Cada linha traz um funcionário, seu estado de residência, seu estado de trabalho, os salários e as retenções feitas.
2. **Valida o formato dos dados.** Confere se documentos e códigos postais têm o formato esperado, antes de qualquer cálculo.
3. **Calcula o que deveria ter sido retido.** Aplica as regras de cada estado ao salário de cada pessoa, com aritmética de precisão.
4. **Compara com o que foi retido.** Qualquer diferença acima de uma tolerância definida é marcada.
5. **Aplica as regras de auditoria.** Por exemplo: um funcionário remoto de uma empresa de NY teve retenção do estado correto?
6. **Agrega por estado e tipo de problema.** Resume quantos casos de cada tipo apareceram.
7. **Gera o relatório de exceções.** Lista os casos a investigar, com o motivo de cada um.
8. **Registra a auditoria.** Grava o que foi feito, para rastreabilidade.

---

## 4. Decisões de engenharia em Bash, explicadas

### 4.1 Por que precisão importa em dinheiro
Computadores comuns representam números fracionários de forma aproximada. Em muitos contextos isso é aceitável. Em folha de pagamento, **centavos importam**, e pequenas diferenças acumuladas em milhares de registros podem gerar discrepâncias reais em relatórios fiscais.

O Bash puro só faz aritmética de números inteiros. Para cálculos com decimais, o projeto usa o `bc`, uma calculadora de precisão arbitrária, na qual o número de casas decimais é controlado explicitamente. É importante definir com clareza a escala usada e **quando arredondar**: arredondar a cada etapa ou só no final produz resultados diferentes, e a regra deve seguir a do órgão fiscal.

Um cuidado correlato: o `awk` também faz contas, mas usa números de ponto flutuante comuns, que são aproximados. Para comparações simples, funciona bem. Para valores monetários que precisam bater ao centavo, a prática mais segura é trabalhar em **centavos inteiros** ou delegar o cálculo ao `bc`.

### 4.2 Regras de auditoria com `awk`
O `awk` lê a planilha linha a linha, sem precisar carregá-la inteira, e aplica regras lógicas a cada registro. É ideal para perguntas do tipo "se o funcionário reside em CT, trabalha para uma empresa de NY e não houve retenção de NY, marque como exceção".

Um ponto sensível: o `awk` separa campos por um caractere, como a vírgula. Se a planilha tiver campos que contêm vírgulas dentro de aspas (um nome de empresa, por exemplo), a divisão simples **quebra os campos de forma errada**, sem avisar. Ou a planilha é gerada de forma controlada, sem esses casos, ou se usa um tratamento mais robusto de CSV.

### 4.3 Validação de formatos com expressões regulares
Expressões regulares verificam se um texto tem o **formato** esperado: o padrão de um SSN, de um EIN ou de um CEP. Isso pega erros de digitação e dados corrompidos cedo, antes de contaminar os cálculos.

Mas é fundamental entender o limite: **um formato válido não significa um número verdadeiro**. A validação só garante que o dado parece um SSN, e não que ele existe ou pertence à pessoa. Registrei isso como limitação, para ninguém confundir validação de formato com verificação de identidade.

### 4.4 Regras como dados, não como código fixo
Alíquotas, limites de contribuição e regras de elegibilidade mudam com frequência, geralmente todo ano. Se estiverem espalhadas dentro da lógica, cada mudança vira uma alteração arriscada no script. A prática recomendada é manter esses parâmetros em um **arquivo de configuração separado**, com data de vigência, de modo que atualizar uma alíquota seja uma mudança simples e fácil de revisar.

### 4.5 Agregação com `cut`, `sort` e `uniq`
Depois de marcar as exceções, o relatório precisa de números resumidos: quantos casos por estado e por tipo. O `cut` extrai colunas, o `sort` ordena e o `uniq` conta repetições. Um detalhe clássico: o **`uniq` só detecta repetições vizinhas**, então os dados precisam estar ordenados antes. Esquecer o `sort` produz contagens erradas, sem qualquer erro visível.

### 4.6 Registro com `tee`
O `tee` divide o fluxo de saída em duas direções: mostra na tela e grava em arquivo ao mesmo tempo. Isso permite acompanhar a execução e, ao mesmo tempo, manter o rastro para o comitê de auditoria.

O cuidado aqui é com **dados sensíveis**. Se a saída incluir SSNs ou salários, eles estarão visíveis no console e gravados em texto simples no log. O ideal é **mascarar** esses campos (por exemplo, mostrar só os últimos quatro dígitos) antes de gravar ou exibir.

---

## 5. Ferramentas utilizadas e o papel de cada uma

| Ferramenta | Papel no projeto |
|---|---|
| `awk` | Lê a folha linha a linha e aplica as regras de auditoria. |
| `bc` | Faz os cálculos monetários com precisão controlada. |
| `cut` / `sort` / `uniq` | Extraem colunas, ordenam e contam exceções por estado. |
| `tee` | Divide a saída entre a tela e o arquivo de auditoria. |

---

## 6. O que o motor entrega

- **Relatório de exceções:** lista de casos a investigar, com o motivo de cada marcação.
- **Resumo por estado e tipo de problema:** visão geral do tamanho do risco.
- **Registro de auditoria:** rastro do que foi verificado e quando.

---

## 7. Limitações conhecidas

- **Dependência da qualidade dos dados de localização:** as regras interestaduais dependem de saber onde cada pessoa realmente trabalhou, e muitas vezes em quantos dias. Se a planilha traz apenas o estado de residência, o script não tem como avaliar certos casos.
- **Regras complexas e mutáveis:** a regra de conveniência do empregador, por exemplo, tem nuances e já foi alvo de disputas judiciais. Uma checagem automática simplifica a realidade.
- **Mais que três estados:** funcionários em outros estados, ou em cidades com tributos próprios, ficam fora do escopo.
- **Validação de formato não é validação de identidade.**
- **Dados sensíveis:** a folha contém informações pessoais e financeiras. O arquivo de entrada deve ficar em local protegido, com permissões restritas.
- **Triagem, não parecer:** as exceções precisam ser avaliadas por profissionais.

---

## 8. Por que Bash para este projeto?

O trabalho é essencialmente **ler uma tabela, aplicar regras linha a linha, comparar valores e resumir resultados**, que é a especialidade do `awk` e das ferramentas de texto Unix. Bash permite:

- Processar planilhas grandes sem carregá-las inteiras em memória.
- Rodar em servidores seguros e isolados, sem instalar dependências adicionais, algo valioso quando se trata de dados de folha.
- Manter um fluxo transparente e auditável, no qual cada etapa pode ser inspecionada.

O ponto de atenção é que Bash exige muita disciplina com **precisão numérica, tratamento de CSV e proteção de dados sensíveis**. Em finanças e folha de pagamento, um erro silencioso é pior que uma falha visível.

---

## 9. Exemplo de uso (descrição)

A execução recebe o caminho da planilha de folha de pagamento, o modo estrito da regra de conveniência de Nova York (que faz a checagem mais rigorosa) e o caminho do relatório de variações a ser gerado. A planilha de entrada deve estar em um local protegido. As demais opções estão descritas no cabeçalho de ajuda do próprio script.