# 08 — Healthcare HIPAA Audit Log Sanitizer & Hasher (Bash)

Um script em Bash que **remove e mascara dados protegidos de saúde (PHI)** em logs de sistemas hospitalares antes que esses logs sigam para um data lake analítico. Depois da limpeza, ele ainda **protege a integridade do resultado**, para que ninguém consiga alterá-lo sem deixar rastro.

Este documento explica **o problema, o raciocínio por trás do desenho e como cada peça funciona**, sem entrar em código.

> **Aviso importante:** este projeto é uma ferramenta técnica de apoio. **Usá-lo não torna uma organização "conforme o HIPAA"**. A conformidade depende de políticas, contratos, controles de acesso e avaliação jurídica e de segurança. O resultado deve ser validado pela equipe de privacidade e compliance da organização.

---

## 1. O problema que o projeto resolve

Sistemas clínicos geram muitos logs: registros de acessos, erros, consultas e operações. Esses logs são valiosos para análise, mas costumam conter, por acidente ou por falta de cuidado, informações de pacientes: nomes, números de documento, números de prontuário, telefones, e-mails e datas.

Enviar esses logs para uma plataforma analítica sem tratamento espalha dados sensíveis para lugares onde mais pessoas têm acesso, aumentando o risco de vazamento e de violação de privacidade. O projeto resolve isso criando uma **etapa obrigatória de higienização** no caminho dos logs, e depois **selando** o resultado para que sua integridade possa ser comprovada.

### Cenário de negócios (NY / MA — hospitais e centros médicos)
Grandes redes de saúde de Boston e Nova York coletam gigabytes de logs de aplicações clínicas que podem conter dados sensíveis de pacientes. Antes de enviá-los para análise, esses logs precisam ser tratados, e o tratamento precisa ser auditável.

---

## 2. Vocabulário essencial

- **PHI (Protected Health Information):** informação de saúde que identifica uma pessoa. É o tipo de dado que as regras de privacidade em saúde nos EUA protegem.
- **HIPAA:** lei americana de proteção de informações de saúde. Duas partes são relevantes aqui: a **Regra de Privacidade**, que define o que conta como dado identificável e como desidentificá-lo, e a **Regra de Segurança**, que trata das proteções técnicas, como controles de acesso, auditoria e integridade.
- **MRN (Medical Record Number):** número de prontuário do paciente em uma instituição.
- **Mascaramento:** substituir um dado sensível por algo que não revela o original, como uma marca ou asteriscos.
- **Pseudonimização:** substituir um identificador por um código consistente, de modo que registros do mesmo paciente continuem ligados entre si sem mostrar quem ele é.
- **Hash:** transformação de um dado em uma "impressão digital" de tamanho fixo, difícil de reverter.
- **Salt / chave secreta:** valor adicional misturado ao dado antes do hash para dificultar a adivinhação.
- **Imutabilidade:** propriedade de um arquivo que não pode ser alterado depois de gravado.
- **Assinatura digital:** prova criptográfica de que um arquivo não foi alterado e de quem o assinou.

---

## 3. Como o sanitizador funciona, passo a passo

1. **Lê o log bruto.** O arquivo de entrada é tratado como altamente sensível, mesmo antes da limpeza.
2. **Mascara padrões conhecidos.** Aplica regras de substituição para formatos como SSN, telefone, e-mail e datas de nascimento.
3. **Pseudonimiza identificadores que precisam ser rastreáveis.** O número de prontuário, por exemplo, é substituído por um código derivado dele, consistente entre registros.
4. **Grava o resultado em um arquivo novo.** O arquivo higienizado é escrito separadamente, sem sobrescrever o original.
5. **Confere o resultado.** Verifica se ainda restam padrões sensíveis no arquivo limpo.
6. **Assina o arquivo higienizado.** Gera uma assinatura digital que permite comprovar, depois, que ele não foi alterado.
7. **Torna o arquivo imutável**, se solicitado, para impedir modificações acidentais ou indevidas.
8. **Trata o original.** O log bruto, que ainda contém PHI, deve ser protegido ou destruído conforme a política da organização.

---

## 4. Decisões de engenharia em Bash, explicadas

### 4.1 Mascaramento com expressões regulares e `sed`
O `sed` percorre o arquivo linha a linha e substitui tudo o que corresponde a um padrão: por exemplo, três dígitos, hífen, dois dígitos, hífen, quatro dígitos, que é o formato de um SSN. É rápido e funciona bem com arquivos enormes, porque não carrega tudo em memória.

Mas é fundamental entender os limites desta técnica:

- **Expressões regulares só encontram o que tem formato previsível.** SSNs, telefones e e-mails têm formatos claros. **Nomes de pessoas, endereços e textos livres não têm**, e as regras podem deixá-los passar. Um nome digitado em uma mensagem de erro, por exemplo, não será detectado.
- **Falsos negativos são o risco principal.** O que não é reconhecido permanece no arquivo. Por isso não se deve afirmar que o resultado está "totalmente limpo".
- **Falsos positivos** também ocorrem: números que parecem SSN mas são outra coisa serão mascarados desnecessariamente, o que pode prejudicar a análise.
- **O mascaramento linha a linha não é "atômico".** Se o processo for interrompido no meio, o arquivo de saída ficará parcial. O modo seguro é gravar em um arquivo temporário e só renomeá-lo para o nome final quando tudo terminar bem, pois a renomeação é uma operação atômica.

### 4.2 O que realmente precisa ser removido
A lei define um conjunto de **identificadores** que devem ser removidos para que um dado seja considerado desidentificado pelo método "porto seguro" (safe harbor). Além dos mais óbvios (nomes, SSN, telefone, e-mail, MRN), a lista inclui itens fáceis de esquecer em logs de sistemas:

- **Endereços IP e URLs**, que são muito comuns em logs.
- **Identificadores de dispositivos** e números de série.
- **Datas** ligadas ao paciente (admissão, alta, nascimento), das quais só o ano pode, em geral, permanecer.
- **Localizações menores que um estado**, como cidades e CEPs completos, com regras específicas.
- **Números de conta, de plano de saúde e de licença.**

Um sanitizador que cubra só SSN, telefone, e-mail e datas de nascimento, como no exemplo original, **cobre apenas parte da lista**. A cobertura deve ser definida em conjunto com a equipe de privacidade e documentada.

### 4.3 Pseudonimização com hash: poder e armadilhas
O hash do número de prontuário permite que a análise acompanhe um mesmo paciente ao longo de vários registros sem saber quem ele é. É útil, mas exige cuidado em três pontos:

- **Hash com "salt" simples é frágil.** Se o conjunto de possíveis números de prontuário for pequeno e previsível, alguém que conheça o método e o salt pode testar todas as possibilidades e reverter os códigos. A construção mais indicada para esse fim é um **hash com chave secreta (HMAC)**, que trata o segredo como uma verdadeira chave criptográfica.
- **O segredo precisa ser protegido.** Ele deve ficar em um arquivo com permissões restritas, e **não** ser passado diretamente na linha de comando ou em variáveis visíveis na lista de processos. Se o segredo vazar, toda a pseudonimização pode ser desfeita.
- **Pseudonimizar não é desidentificar.** Um código **derivado do prontuário** continua ligado ao paciente. Em termos de privacidade, isso pode significar que os dados continuam sendo tratados como PHI, ou exigir uma avaliação especializada. A decisão de quanto proteger depende da finalidade, dos contratos e da avaliação da equipe de compliance.

### 4.4 Imutabilidade com `chattr +i`
O atributo de imutabilidade do Linux impede que um arquivo seja alterado, renomeado ou apagado, mesmo por quem tem permissão de escrita. É uma proteção útil contra erros e alterações acidentais. É preciso conhecer seus limites:

- **Exige privilégios elevados** para ser aplicado e removido.
- **O administrador do sistema pode remover o atributo.** Ele protege contra acidentes e contra usuários comuns, mas não contra alguém com poderes totais sobre a máquina.
- **Conflita com a retenção e a exclusão.** Arquivos imutáveis não podem ser apagados ou rotacionados até que o atributo seja removido, o que precisa ser previsto na política de retenção de dados.
- **Só vale para o sistema de arquivos local** (como ext4 ou xfs). Em armazenamento em rede ou em nuvem, a imutabilidade precisa vir do próprio serviço, por exemplo, com recursos de armazenamento "write once, read many" (WORM).

Para exigências fortes de imutabilidade, o `chattr` deve ser visto como uma camada, e não como a solução completa.

### 4.5 Assinatura digital com `gpg`
Assinar o arquivo higienizado cria uma prova de que ele **não foi alterado desde a assinatura** e de **quem o assinou**. Qualquer alteração posterior, mesmo de um único caractere, invalida a verificação.

Pontos de atenção:

- **Assinatura separada ou embutida:** o `gpg` pode criar uma assinatura *embutida*, que contém uma cópia compactada do arquivo, ou uma assinatura *separada* (detached), que fica em um arquivo `.sig` ao lado do original. Para o modelo descrito, de um arquivo de log com um `.sig` ao lado, a assinatura **separada** é a adequada.
- **Execução automática exige uma chave disponível sem senha manual.** Isso é conveniente, mas aumenta o risco: quem acessar a máquina pode assinar qualquer coisa. A chave privada deve ficar protegida, idealmente em um módulo de segurança de hardware ou em um serviço de gestão de chaves.
- **Assine o arquivo já higienizado**, e não o bruto, para não propagar nem guardar PHI desnecessariamente.
- **A assinatura não prova o momento** em que foi feita sem um carimbo de tempo confiável.

### 4.6 Hashing de integridade com `sha256sum` e `openssl`
Além da assinatura, é comum registrar o hash do arquivo em um registro separado. Isso permite uma verificação rápida de integridade. As duas ferramentas calculam o mesmo tipo de impressão digital, e o `openssl` também fornece a construção com chave (HMAC) mencionada acima.

### 4.7 Cuidados gerais de segurança em Bash
- **Permissões restritas:** os arquivos criados devem nascer legíveis apenas por quem precisa deles.
- **Limpeza garantida:** arquivos temporários que contenham PHI devem ser apagados ao final, mesmo em caso de erro.
- **O próprio log do script não pode conter PHI.** Mensagens de erro devem descrever o problema, e não repetir o dado sensível.
- **Falha segura:** se qualquer etapa falhar, o script deve parar e **não** liberar um arquivo parcialmente limpo.

---

## 5. Ferramentas utilizadas e o papel de cada uma

| Ferramenta | Papel no projeto |
|---|---|
| `sed` | Mascara padrões sensíveis nos logs. |
| `sha256sum` / `openssl` | Calculam hashes de integridade e, no caso do `openssl`, hashes com chave. |
| `chattr` / `lsattr` | Aplicam e consultam o atributo de imutabilidade. |
| `gpg` | Assina digitalmente o arquivo higienizado. |

---

## 6. O que o sanitizador entrega

- **Log higienizado:** versão do log com padrões sensíveis conhecidos mascarados.
- **Identificadores pseudonimizados:** códigos consistentes para análise sem exibir o dado original.
- **Prova de integridade:** assinatura digital e, opcionalmente, arquivo imutável.

---

## 7. Limitações conhecidas

- **Regex não garante limpeza completa:** nomes, endereços e textos livres podem passar. A ferramenta reduz o risco, mas não o elimina.
- **Cobertura parcial de identificadores:** é preciso mapear todos os identificadores relevantes para o contexto, incluindo IPs, URLs e identificadores de dispositivos.
- **Pseudonimização não equivale a desidentificação.**
- **Dependência da proteção do segredo:** se a chave vazar, os códigos podem ser revertidos.
- **Imutabilidade limitada:** o `chattr` não protege contra administradores e conflita com políticas de retenção.
- **Chave de assinatura em modo automático:** exige proteção redobrada.
- **O log bruto continua sendo PHI:** ele precisa de proteção forte ou destruição segura.
- **Teste sem dados reais:** a validação das regras deve usar **dados fictícios**, e nunca registros reais de pacientes.
- **Não é certificação de conformidade.**

---

## 8. Por que Bash para este projeto?

O trabalho central, **ler logs enormes, substituir padrões e gravar o resultado**, é o território natural do `sed` e dos filtros Unix. Bash permite:

- Processar arquivos muito grandes em fluxo, sem carregá-los inteiros em memória.
- Rodar dentro do próprio servidor onde o log é gerado, **sem enviar PHI a ferramentas externas** antes de limpá-lo.
- Manter um fluxo simples e auditável, no qual cada etapa é uma ferramenta conhecida e revisável.

O ponto de atenção é que, em privacidade, **o erro silencioso é o pior erro**: uma regra que deixa passar um dado sensível não gera alerta nenhum. Por isso, os testes com dados fictícios, a verificação do resultado e a revisão por especialistas são tão importantes quanto o próprio script.

---

## 9. Exemplo de uso (descrição)

A execução recebe o caminho do log bruto, o caminho do arquivo que guarda o segredo usado na pseudonimização (com permissões restritas) e a opção de tornar o resultado imutável. As demais opções estão descritas no cabeçalho de ajuda do próprio script.