# 02 — NYC DOB & HPD Property Compliance Watcher (Bash)

Uma automação em Bash puro para auditar portfólios de edifícios em Nova York usando a **API de dados abertos da cidade (NYC Open Data, baseada em Socrata/SODA)**. Ela consulta registros do **DOB (Department of Buildings)** e do **HPD (Housing Preservation & Development)**, classifica o que encontra por gravidade e entrega um relatório que uma equipe de compliance consegue ler e agir.

Este documento explica **o problema, o raciocínio por trás do desenho e como cada peça funciona**, sem entrar em código.

---

## 1. O problema que o projeto resolve

Quem administra muitos imóveis em Nova York vive sob fiscalização constante. Uma violação ignorada pode virar multa, e uma ordem de paralisação de obra pode travar um empreendimento inteiro. O problema não é a falta de informação, já que a cidade publica tudo, mas o **volume e a dispersão**: são centenas de edifícios, em vários bairros, com registros espalhados em vários conjuntos de dados.

Conferir isso manualmente, edifício por edifício, não escala e é fácil de esquecer. O projeto automatiza essa varredura e responde a uma pergunta simples: **"neste momento, quais dos meus edifícios têm pendências graves?"**

### Cenário de negócios (NY — Real Estate & Property Management)
Administradoras prediais e escritórios jurídicos de Manhattan, Brooklyn e Queens precisam identificar rapidamente:

- **Intimações e violações do DOB**, ligadas à construção, segurança e uso do edifício.
- **Multas do ECB**, aplicadas por tribunal administrativo da cidade, que se acumulam se não forem tratadas.
- **Stop Work Orders (ordens de paralisação de obra)**, que interrompem trabalhos em andamento.
- **Violações de habitabilidade do HPD**, ligadas às condições de moradia.

Descobrir essas pendências cedo dá tempo para corrigi-las antes que bloqueiem a regularização do imóvel (como o certificado de ocupação) ou gerem consequências financeiras maiores.

---

## 2. Vocabulário essencial

- **SODA API:** a interface padrão dos portais de dados abertos Socrata. Permite consultar tabelas públicas com filtros, ordenação e paginação via HTTP.
- **BIN (Building Identification Number):** código numérico que identifica cada edifício na cidade. É a chave mais confiável para localizar um prédio, pois endereços podem ser escritos de várias formas.
- **DOB:** órgão que regula construção e segurança dos edifícios.
- **HPD:** órgão que fiscaliza condições de moradia e habitabilidade.
- **ECB:** tribunal administrativo que julga e aplica multas a certas violações.
- **Stop Work Order:** ordem formal para suspender obras.
- **Paginação:** técnica de buscar um conjunto grande de dados em "páginas" sucessivas.

---

## 3. Como o monitor funciona, passo a passo

1. **Lê a lista de edifícios.** O usuário fornece um arquivo com os BINs do portfólio, um por linha.
2. **Consulta a API por edifício.** Para cada BIN, o script pede à API os registros de violações associados.
3. **Pagina os resultados.** Como a API devolve os dados em lotes, o script repete a consulta avançando de página em página até não restar nada.
4. **Filtra no servidor.** As condições (por exemplo, apenas violações abertas) são enviadas junto com a consulta, para que a própria API devolva só o relevante.
5. **Classifica por severidade.** O `jq` separa os registros por gravidade e descarta o que está abaixo do nível mínimo pedido.
6. **Agrega os números.** Soma valores de multas e conta violações abertas por edifício.
7. **Monta o relatório.** Gera um documento em Markdown ou CSV, pronto para leitura ou importação em planilha.
8. **Avisa a equipe.** Se houver algo grave, dispara um e-mail de alerta para o time de compliance.

---

## 4. Decisões de engenharia em Bash, explicadas

### 4.1 Paginação com laço de repetição
APIs públicas quase nunca devolvem tudo de uma vez: elas impõem um teto por resposta. A solução é um laço que controla dois parâmetros:

- **Limite:** quantos registros pedir por vez.
- **Deslocamento (offset):** a partir de qual posição começar.

A cada volta, o deslocamento avança exatamente o tamanho do lote anterior. O laço termina quando uma página volta vazia ou incompleta. Sem isso, o script veria só o começo dos dados e **daria a falsa impressão de que está tudo limpo**, que é o pior tipo de erro em auditoria.

Um cuidado importante: a ordenação precisa ser estável entre as páginas. Se a ordem mudar durante a varredura, registros podem ser pulados ou repetidos.

### 4.2 Filtro no servidor, não no cliente
É muito mais eficiente pedir à API "só violações abertas deste edifício" do que baixar tudo e filtrar depois. O filtro viaja dentro da requisição e economiza banda, tempo e memória. Quanto mais seletiva a consulta, menos dados o resto do script precisa processar.

### 4.3 Codificação segura dos filtros
As condições de filtro contêm espaços, aspas e símbolos que não podem aparecer crus em uma URL. Se não forem codificados, a requisição pode quebrar ou, pior, ser interpretada de forma diferente do esperado. O `curl` tem um recurso próprio para montar e codificar esses parâmetros automaticamente. Delegar isso à ferramenta é mais seguro do que tentar escapar caracteres manualmente.

### 4.4 Classificação por severidade
Nem toda violação merece a mesma atenção. O projeto agrupa por três níveis:

- **Classe 1 — Imediatamente perigosa:** exige ação urgente.
- **Classe 2 — Grave:** deve ser tratada com prioridade.
- **Classe 3 — Menor:** acompanhamento de rotina.

Esse agrupamento permite que a equipe comece pelo que mais importa. A escolha do nível mínimo no momento da execução transforma o mesmo script em um alerta de emergência (apenas Classe 1) ou em uma auditoria completa (todas as classes).

> **Observação:** órgãos diferentes usam escalas de classificação diferentes (o HPD, por exemplo, usa letras). O script precisa normalizar essas escalas para uma régua comum antes de comparar, e isso é uma decisão de projeto a ser documentada e mantida.

### 4.5 Agregação com `jq`
Em vez de apenas listar registros, o `jq` produz **números de decisão**: total de multas, quantidade de violações abertas, contagem por classe. Ele faz isso em um único fluxo de dados, sem arquivos intermediários, o que mantém o processo rápido e simples de entender.

### 4.6 Reconciliação de endereços e BINs com `awk`
Dados municipais costumam ter inconsistências: o mesmo prédio pode aparecer com grafias de endereço diferentes. O BIN resolve isso, porque é um identificador estável. O `awk`, ferramenta ideal para processar texto em colunas, é usado para cruzar a lista do cliente com os registros da cidade e garantir que cada violação seja atribuída ao edifício certo.

### 4.7 Relatório com ferramentas de texto
O relatório é montado combinando utilitários clássicos: `paste` junta colunas, `awk` calcula e formata, e `column` alinha a saída em colunas. A vantagem é a transparência: cada etapa é visível e substituível, e o resultado pode ser lido por pessoas (Markdown) ou por outros sistemas (CSV).

### 4.8 Alertas por e-mail
O script usa `mailx` ou `sendmail` para avisar a equipe quando algo grave aparece. E-mail é um canal universal em escritórios jurídicos e administradoras, não exige integração com plataformas de terceiros e deixa um registro rastreável do aviso.

---

## 5. Ferramentas utilizadas e o papel de cada uma

| Ferramenta | Papel no projeto |
|---|---|
| `curl` | Conversa com a API da cidade, incluindo codificação dos filtros. |
| `jq` | Filtra, classifica e agrega os dados em JSON. |
| `awk` | Reconcilia endereços e BINs e calcula totais. |
| `paste` / `column` | Montam e alinham o relatório. |
| `mailx` / `sendmail` | Enviam os alertas por e-mail. |

---

## 6. Formatos de saída

- **Markdown:** relatório executivo legível, bom para compartilhar e arquivar.
- **CSV:** pensado para abrir em planilhas ou alimentar outros sistemas.
- **E-mail de alerta:** resumo curto das pendências críticas, enviado ao time de compliance.

---

## 7. Boas práticas ao usar a API pública

- **Token de aplicação:** portais Socrata costumam limitar consultas anônimas. Registrar um token de aplicação é a forma recomendada de obter um limite mais confortável para varreduras grandes.
- **Pausas entre requisições:** ao consultar centenas de edifícios, é prudente espaçar as chamadas para não sobrecarregar o serviço.
- **Tratamento de falhas:** o script deve parar de forma clara se a API devolver erro, em vez de gerar um relatório incompleto que pareça válido.

---

## 8. Limitações conhecidas

- **Dados abertos têm defasagem:** a informação publicada pode demorar a refletir o que acabou de acontecer. O monitor mostra o que a cidade já divulgou, não necessariamente o estado em tempo real.
- **Não substitui verificação oficial:** para decisões jurídicas ou financeiras, os registros devem ser confirmados diretamente nos órgãos competentes.
- **Qualidade depende da lista de entrada:** um BIN errado ou ausente significa um edifício não auditado.
- **Mudanças no formato dos dados:** se a cidade alterar nomes de campos ou conjuntos de dados, os filtros precisarão de ajuste.

---

## 9. Por que Bash para este projeto?

O trabalho aqui é, em essência, **buscar, filtrar, agregar e formatar texto**, que é exatamente o território das ferramentas Unix. Bash permite:

- Executar em qualquer servidor Linux sem instalar runtimes.
- Compor ferramentas pequenas e especializadas em um fluxo claro.
- Manter um código curto e fácil de auditar, algo valioso quando o resultado alimenta decisões jurídicas e de compliance.

O custo é que Bash pede cuidado com erros e com dados inesperados. Por isso, a paginação correta, o tratamento de falhas e a validação da entrada são tão importantes neste projeto.

---

## 10. Exemplo de uso (descrição)

A execução recebe três informações principais: o arquivo com a lista de BINs do portfólio, o nível mínimo de severidade que deve entrar no relatório (por exemplo, apenas Classe 1) e o caminho onde o relatório será gravado. As demais opções estão descritas no cabeçalho de ajuda do próprio script.