# 04 — CT Insurance Weather Catastrophe Auditor (Bash)

Uma automação em Bash que faz a **auditoria preliminar de sinistros de seguro** comparando o que o segurado alega com o que os **registros meteorológicos históricos da NOAA** mostram para aquele local e aquela data, em Connecticut.

Este documento explica **o problema, o raciocínio por trás do desenho e como cada peça funciona**, sem entrar em código.

---

## 1. O problema que o projeto resolve

Depois de uma grande tempestade, uma seguradora recebe uma enxurrada de pedidos de indenização em pouco tempo. A maioria é legítima, mas alguns descrevem eventos que os dados do clima não sustentam, seja por erro de data, exagero ou fraude. Verificar um a um, manualmente, é lento e caro.

O projeto cria um **filtro de triagem**: para cada sinistro, ele pergunta aos dados oficiais "naquele dia, perto daquele endereço, o tempo registrado é compatível com o que foi alegado?". O resultado ajuda a decidir **quais casos podem seguir rapidamente e quais merecem um olhar humano mais atento**.

Um ponto importante: o script **não decide** se um sinistro é válido. Ele produz um indicador de compatibilidade. A decisão final continua sendo de um analista.

### Cenário de negócios (CT — Hartford, a "capital mundial dos seguros")
Seguradoras de linhas patrimoniais e comerciais sediadas em Hartford processam milhares de sinistros após tempestades de inverno (os Nor'easters) ou ventos fortes. Se um segurado alega perda por vendaval em New Haven em 12 de janeiro, o script verifica se a estação oficial mais próxima registrou ventos compatíveis na região e na data.

---

## 2. Vocabulário essencial

- **NOAA:** a agência meteorológica e oceânica dos EUA, fonte oficial dos dados climáticos.
- **CDO (Climate Data Online):** serviço da NOAA que oferece acesso a dados históricos por API.
- **Estação meteorológica:** ponto físico de medição. Cada estação cobre apenas uma região limitada.
- **PRCP:** precipitação (chuva, neve derretida) acumulada no dia.
- **AWND:** velocidade **média** diária do vento.
- **WSF5:** velocidade máxima do vento medida em uma janela curta de 5 segundos, a medida mais próxima de uma "rajada".
- **Janela temporal:** o intervalo de datas considerado, que pode ser maior que o dia exato do sinistro.
- **Subscrição (underwriting):** o processo de avaliar e precificar riscos em seguros.

---

## 3. Como o auditor funciona, passo a passo

1. **Lê a lista de sinistros.** Um arquivo CSV traz, para cada caso, a data da perda, o local (como o CEP) e o tipo de evento alegado.
2. **Define a janela de datas.** Em vez de olhar só o dia exato, o script inclui uma margem de um dia antes e um dia depois, porque tempestades duram, avançam e são registradas de forma diferente entre estações.
3. **Localiza as estações relevantes.** Descobre quais estações da NOAA atendem aquela região.
4. **Consulta os dados.** Pede à API os registros de precipitação e de vento para a janela escolhida.
5. **Filtra as medidas úteis.** O `jq` seleciona apenas os tipos de dado relevantes para o evento alegado.
6. **Normaliza as unidades.** O `awk` converte os valores brutos para as unidades usadas na análise de risco.
7. **Compara com um limite de compatibilidade.** Verifica se os valores atingem intensidade coerente com o dano alegado.
8. **Gera o resultado da auditoria.** Cada sinistro recebe uma marcação de compatível, incompatível ou inconclusivo, com os números que justificam.
9. **Repete em lote.** O processo roda para vários sinistros ao mesmo tempo, respeitando os limites do serviço.

---

## 4. Decisões de engenharia em Bash, explicadas

### 4.1 Autenticação com token
A API da NOAA exige um token pessoal. Ele deve ser enviado em um **cabeçalho da requisição**, e não colado na URL, porque URLs tendem a aparecer em logs e históricos. O token também deve vir de uma variável de ambiente ou de um arquivo protegido, e não escrito diretamente no script ou passado de forma que fique visível na lista de processos do servidor. Em um contexto de seguros, onde há dados sensíveis de clientes, esse cuidado faz parte da conformidade.

### 4.2 Normalização de unidades
Dados meteorológicos brutos costumam vir em unidades pouco intuitivas, como décimos de milímetro para chuva e décimos de metro por segundo para vento. Comparar números sem converter é uma das formas mais fáceis de gerar conclusões erradas. O `awk` faz essa conversão para a unidade de referência da análise (por exemplo, milhas por hora para vento).

Boa prática: documentar de forma explícita **qual unidade cada campo tem na entrada e na saída**, pois uma conversão errada passa despercebida e contamina todos os resultados.

### 4.3 Janela temporal com margem
Um sinistro registrado para o dia 12 pode ter ocorrido na madrugada do dia 11 para o 12, ou o pico do vendaval pode ter sido medido em outro horário. A margem de um dia evita **falsos negativos**, isto é, marcar como incompatível um caso legítimo só porque o pico caiu no dia vizinho.

Esse cálculo usa a função de datas do GNU `date`, que sabe subtrair e somar dias a partir de uma data de texto. Vale registrar que essa sintaxe é específica das versões GNU. Em sistemas como macOS, o comportamento é diferente, o que importa se o script rodar fora de servidores Linux.

### 4.4 Escolha da medida certa para o evento
Nem todo dado serve para qualquer alegação:

- Para **vento forte**, a medida mais informativa é a rajada (WSF5). A velocidade média (AWND) pode ser baixa mesmo em um dia com rajadas perigosas, então usar só a média poderia reprovar um caso legítimo.
- Para **chuva ou neve**, a precipitação (PRCP) é a medida base.
- **Granizo** exige atenção: os dados diários de estação usados aqui não medem granizo diretamente. Para esse tipo de alegação, seria necessário acrescentar outra fonte, como bases de registro de eventos severos.

### 4.5 Processamento em lote com `xargs`
Auditar milhares de sinistros um por vez seria lento. O `xargs` permite executar várias instâncias do trabalho ao mesmo tempo, dividindo a lista entre elas. Dois esclarecimentos:

- O paralelismo do `xargs` usa **processos independentes**, não threads. Cada um faz seu trabalho isoladamente.
- O paralelismo precisa respeitar o **limite de requisições da API** (a NOAA impõe limites por segundo e por dia para cada token). Mais processos não significam mais velocidade se o serviço começar a recusar chamadas. O número de processos paralelos deve ser calibrado com esse teto em mente.

Outro cuidado: quando vários processos escrevem resultados ao mesmo tempo, as linhas de saída podem se misturar. É preciso garantir que cada resultado seja gravado de forma inteira, sem ser interrompido por outro.

### 4.6 Análise numérica com `awk`
Além da conversão de unidades, o `awk` compara valores contra limites e calcula estatísticas simples. É uma ferramenta natural para isso, porque lê dados em colunas e faz contas linha a linha, sem precisar de um ambiente pesado de análise.

---

## 5. Ferramentas utilizadas e o papel de cada uma

| Ferramenta | Papel no projeto |
|---|---|
| `curl` | Conversa com a API da NOAA, enviando o token em cabeçalho. |
| `jq` | Seleciona as medidas relevantes (precipitação e vento) nas respostas JSON. |
| `awk` | Converte unidades, compara com limites e calcula estatísticas. |
| `xargs` | Executa a auditoria de vários sinistros em paralelo. |
| `date` (GNU) | Calcula as janelas de datas. |

---

## 6. O que o auditor entrega

- **Marcação por sinistro:** compatível, incompatível ou inconclusivo.
- **Evidência:** os valores medidos que embasam a marcação, para que o analista confira rapidamente.
- **Visão em lote:** um resumo de quantos casos de uma tempestade passam na triagem e quantos precisam de revisão.

---

## 7. Limitações conhecidas

- **Distância da estação:** a estação mais próxima pode estar a vários quilômetros do imóvel. O vento e a chuva variam bastante em curtas distâncias, especialmente perto do litoral.
- **Dados ausentes:** estações falham e deixam lacunas. Isso deve resultar em "inconclusivo", e não em "incompatível".
- **Qualidade e revisão dos dados:** registros históricos podem ser corrigidos depois pela NOAA.
- **Granizo e eventos localizados:** fenômenos muito pontuais, como granizo ou tornados, podem não aparecer nos dados diários de estação.
- **Triagem, não veredito:** a compatibilidade com o clima não prova nem desmente um sinistro. Ela só prioriza a atenção humana.
- **Limites da API:** o volume de consultas por dia e por segundo restringe o tamanho do lote processável.

---

## 8. Por que Bash para este projeto?

A tarefa combina **consulta a API, filtragem de dados, conversão numérica e execução em lote**, tudo isso bem coberto por ferramentas Unix clássicas. Bash permite:

- Montar o pipeline rapidamente, com etapas pequenas e fáceis de revisar.
- Rodar em qualquer servidor Linux sem instalar runtimes.
- Paralelizar o trabalho com um único utilitário, sem escrever código de concorrência.

O ponto de atenção é o tratamento cuidadoso de unidades, falhas e dados ausentes, porque em auditoria um erro silencioso pode virar uma decisão injusta sobre um segurado.

---

## 9. Exemplo de uso (descrição)

A execução recebe o arquivo CSV com os sinistros do período e o token de acesso da NOAA, preferencialmente lido de uma variável de ambiente. O script processa cada caso e produz o resultado da auditoria em lote. As demais opções estão descritas no cabeçalho de ajuda do próprio script.