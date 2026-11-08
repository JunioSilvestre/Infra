# 01 — SEC EDGAR Filings Monitor (Bash & jq)

Um monitor de documentos da **SEC (U.S. Securities and Exchange Commission)** escrito inteiramente em Bash. Ele consulta a API pública do EDGAR, identifica novas submissões de uma empresa e as apresenta no terminal, em JSON ou como alerta para ferramentas de comunicação.

Este documento explica **o que o projeto faz, por que foi desenhado assim e como cada peça funciona**. A ideia é que quem leia entenda o raciocínio por trás das decisões, não apenas o resultado.

---

## 1. O problema que o projeto resolve

Quando uma empresa de capital aberto nos EUA divulga um fato relevante ou um balanço, ela é obrigada a protocolar um documento na SEC. Quem investe precisa saber disso o mais rápido possível, porque a informação pode mover o preço de um ativo em minutos.

O desafio é transformar essa fonte pública em um fluxo confiável de informação, sem depender de plataformas pesadas. O projeto responde a isso com uma ferramenta pequena, previsível e fácil de auditar.

### Cenário de negócios (NY / CT)
Fundos de investimento de Manhattan e Greenwich costumam operar em servidores Linux, muitas vezes posicionados perto dos data centers de Nova Jersey (Secaucus e Mahwah) para reduzir latência. Nesses ambientes, uma ferramenta que depende só de utilitários já presentes no sistema é uma vantagem: não há runtime para instalar, atualizar ou corrigir vulnerabilidades.

---

## 2. Vocabulário essencial

- **EDGAR:** o sistema eletrônico da SEC onde todos os documentos são publicados.
- **CIK:** o número de identificação de cada empresa no EDGAR. É a chave real de consulta; o ticker (como JPM) é só um apelido que precisa ser convertido para CIK.
- **Form 8-K:** comunicado de fato relevante (aquisições, mudanças de diretoria, resultados preliminares, etc.). É o documento mais sensível ao tempo.
- **Form 10-Q:** balanço trimestral.
- **Form 10-K:** balanço anual.
- **Accession number:** identificador único de cada submissão. É o que permite saber se um documento já foi visto antes.

---

## 3. Como o monitor funciona, passo a passo

1. **Recebe a entrada.** O usuário informa o ticker, o formato de saída desejado e, opcionalmente, um endereço de webhook para alertas.
2. **Resolve o ticker em CIK.** A SEC publica um arquivo de mapeamento entre tickers e CIKs. O script consulta esse arquivo e descobre qual empresa investigar.
3. **Busca o histórico recente.** Com o CIK em mãos, consulta o endpoint de submissões da empresa, que devolve um JSON com a lista de documentos protocolados.
4. **Filtra o que interessa.** O `jq` seleciona só os campos úteis (tipo de formulário, data, número de acesso, descrição) e, se desejado, apenas os tipos relevantes como 8-K, 10-Q e 10-K.
5. **Compara com o que já foi visto.** O accession number de cada documento é comparado com o estado anterior, para que apenas o que é novo gere saída ou alerta.
6. **Entrega o resultado.** O dado sai em tabela legível, em JSON para outros sistemas, e/ou como notificação no webhook.
7. **Registra e limpa.** O evento vai para o log do sistema e os arquivos temporários são apagados, mesmo em caso de erro.

Uma observação de honestidade técnica: o EDGAR não oferece "push". O que chamamos de tempo real é, na prática, **polling frequente e disciplinado**, respeitando os limites da SEC. A latência depende do intervalo escolhido entre consultas.

---

## 4. Decisões de engenharia em Bash, explicadas

### 4.1 Shebang com `env`
A primeira linha do script indica qual interpretador usar. Usar `env` para localizar o Bash torna o script portável: ele funciona mesmo que o Bash esteja instalado em caminhos diferentes entre distribuições.

### 4.2 Modo estrito (`set -euo pipefail`)
Por padrão, o Bash é permissivo: se um comando falha, ele segue em frente como se nada tivesse acontecido. Em automação financeira, isso é perigoso, porque o script pode seguir com dados vazios ou incompletos. O modo estrito combina três proteções:

- **`-e`:** o script para assim que um comando falha, em vez de continuar com um estado inconsistente.
- **`-u`:** usar uma variável que nunca foi definida vira erro. Isso evita que um erro de digitação em um nome de variável passe despercebido e produza comportamento estranho.
- **`pipefail`:** em uma cadeia de comandos ligados por pipe, o resultado é considerado falho se *qualquer* etapa falhar. Sem isso, apenas o último comando da cadeia seria avaliado, e um erro no `curl` ficaria escondido atrás de um `jq` bem-sucedido.

Juntas, essas opções fazem o script **falhar cedo e de forma visível**, o que é preferível a falhar em silêncio.

### 4.3 Respeito ao limite de requisições
A SEC permite no máximo **10 requisições por segundo** por usuário. Ultrapassar esse limite leva a bloqueio temporário do endereço de IP. O script impõe uma pausa entre as chamadas (`sleep`) para ficar confortavelmente abaixo do teto. Ser um bom cidadão da API não é só cortesia: é o que mantém o monitor funcionando no longo prazo.

### 4.4 Identificação obrigatória (User-Agent)
A SEC exige que toda requisição automatizada se identifique com um cabeçalho contendo o nome da organização e um e-mail de contato. Isso permite que a SEC procure o responsável caso haja algum problema, em vez de simplesmente bloquear. Requisições anônimas ou com identificação genérica são rejeitadas. Por isso o cabeçalho é tratado como configuração obrigatória, não opcional.

### 4.5 Compressão automática
As respostas da SEC podem ser grandes. Pedir compressão gzip reduz o volume trafegado, o que economiza banda e acelera a resposta. O `curl` cuida de pedir e descompactar de forma transparente, de modo que o resto do script recebe sempre JSON puro.

### 4.6 Processamento com `jq`
O `jq` é o "bisturi" do projeto. Ele lê o JSON da SEC diretamente do fluxo de pipes, sem gravar arquivos intermediários, e extrai apenas o necessário. As vantagens são:

- **Velocidade:** é um binário compilado, rápido mesmo em respostas volumosas.
- **Precisão:** trabalha com a estrutura do JSON, em vez de tentar "adivinhar" texto com expressões regulares, que quebram com facilidade.
- **Composição:** a saída de um filtro entra no próximo, no espírito da filosofia Unix de ferramentas pequenas que fazem uma coisa bem.

### 4.7 Limpeza garantida (`trap`)
O script cria um arquivo temporário para guardar respostas parciais. O `trap` registra uma ação de limpeza que roda **sempre que o script termina**, seja por sucesso, erro, ou interrupção manual (Ctrl+C) ou do sistema. Assim, nenhum resíduo fica no disco, e isso importa especialmente em ambientes com regras de conformidade sobre dados em repouso.

---

## 5. Ferramentas utilizadas e o papel de cada uma

| Ferramenta | Papel no projeto |
|---|---|
| `curl` | Faz as requisições HTTPS à SEC, com TLS moderno, cabeçalhos customizados e compressão. |
| `jq` | Filtra e transforma o JSON recebido. |
| `column` | Alinha os dados em colunas para uma leitura limpa no terminal. |
| `logger` | Envia eventos para o Syslog/Journald, integrando o monitor à observabilidade do servidor. |

Todas são ferramentas padrão ou facilmente instaláveis em qualquer Linux, o que mantém o projeto leve.

---

## 6. Formatos de saída

- **Tabela:** pensada para uso humano no terminal, com colunas alinhadas.
- **JSON:** pensada para integração, pois outro programa pode consumir a saída sem precisar interpretar texto formatado.
- **Alerta por webhook:** envia uma mensagem para um canal (como o Slack) quando surge um documento novo, de modo que a equipe seja avisada sem precisar olhar o terminal.

---

## 7. Observabilidade e operação

Ao enviar eventos ao `logger`, o monitor passa a aparecer nas mesmas ferramentas que a equipe de infraestrutura já usa para acompanhar o servidor. Isso permite responder a perguntas como "o monitor rodou às 9h?", "houve erro de rede?" ou "quando foi o último documento detectado?" sem criar um sistema de logs paralelo.

Para uso contínuo, o script é normalmente agendado (cron ou timer do systemd), com um intervalo que equilibre rapidez e respeito ao limite da SEC.

---

## 8. Limitações conhecidas

- **Não é push:** a detecção depende do intervalo de consulta.
- **Estado local:** a lista de documentos já vistos fica no próprio servidor; se esse estado for perdido, alertas antigos podem ser reenviados.
- **Dependência do formato da SEC:** se a SEC alterar a estrutura do JSON, os filtros do `jq` precisarão de ajuste.
- **Escopo:** o monitor acompanha uma empresa por execução; acompanhar uma carteira inteira exige repetir o processo, sempre respeitando o limite de requisições.

---

## 9. Por que Bash e não outra linguagem?

Bash não é a melhor escolha para tudo, mas aqui ele brilha porque o problema é, em essência, **ligar ferramentas existentes**: buscar dados, filtrar, formatar, notificar. Isso traz:

- Zero dependências de runtime além de utilitários comuns.
- Inicialização instantânea, ideal para execuções frequentes agendadas.
- Código curto e fácil de revisar, o que facilita auditoria em ambientes regulados.

O ponto de atenção é que Bash exige disciplina (daí o modo estrito e o `trap`). Sem elas, scripts crescem frágeis. Este projeto é também um exemplo de como escrever Bash de forma **defensiva e profissional**.

---

## 10. Exemplo de uso (descrição)

A execução recebe o ticker da empresa, o formato de saída desejado (por exemplo, JSON) e, opcionalmente, o endereço do webhook para onde enviar alertas. O comando completo com todas as opções está descrito no cabeçalho de ajuda do próprio script.