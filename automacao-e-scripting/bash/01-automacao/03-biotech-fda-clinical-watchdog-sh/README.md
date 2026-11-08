# 03 — MA Biotech Clinical Trials Watchdog (Bash)

Um pipeline de vigilância contínua em Bash que acompanha **ensaios clínicos** publicados no **ClinicalTrials.gov** e detecta, a cada execução, o que mudou desde a última vez. O foco é o polo de biotecnologia de Massachusetts, onde saber cedo que um estudo concorrente foi encerrado ou suspenso pode influenciar decisões de investimento e de pesquisa.

Este documento explica **o problema, o raciocínio por trás do desenho e como cada peça funciona**, sem entrar em código.

---

## 1. O problema que o projeto resolve

Em biotecnologia, o status de um ensaio clínico é informação estratégica. Se um concorrente interrompe um estudo de Fase 3, isso pode abrir espaço no mercado. Se um estudo é concluído, resultados podem estar próximos. Se um patrocinador suspende um programa, a tese de investimento pode mudar.

Essas informações são públicas, mas ficam em uma base enorme que muda o tempo todo. Ninguém consegue acompanhar isso olhando a página manualmente. O desafio não é obter os dados, e sim **perceber o que é novo** dentro de milhares de registros. É por isso que o coração do projeto é a **detecção de mudanças**, e não a simples consulta.

### Cenário de negócios (MA — Kendall Square / Boston / Cambridge)
No cluster biomédico de Boston e Cambridge, fundos de biotecnologia e laboratórios precisam detectar rapidamente mudanças de status em estudos concorrentes nas Fases 1, 2 e 3, para guiar decisões de investimento e estratégia de P&D.

> **Nota sobre as fontes:** os estudos clínicos vêm do **ClinicalTrials.gov**, que é uma base separada da FDA. Aprovações e cartas regulatórias da FDA são publicadas em outros canais. O projeto, como descrito aqui, cobre ensaios clínicos. Acompanhar cartas e aprovações da FDA exigiria incorporar essas outras fontes.

---

## 2. Vocabulário essencial

- **ClinicalTrials.gov:** registro público mantido pelos EUA onde patrocinadores publicam informações sobre seus estudos clínicos.
- **Fases 1, 2 e 3:** etapas progressivas de teste de um tratamento, da segurança inicial até a confirmação de eficácia em grande escala.
- **Sponsor (patrocinador):** a organização responsável pelo estudo, normalmente uma empresa ou instituição.
- **Status do estudo:** o estágio atual, como recrutando, concluído, suspenso ou encerrado.
- **Snapshot:** uma "fotografia" dos dados em um momento específico, guardada para comparação futura.
- **Delta:** a diferença entre duas fotografias, ou seja, apenas o que mudou.

---

## 3. Como o monitor funciona, passo a passo

1. **Garante que ele é a única execução ativa.** Antes de qualquer coisa, o script obtém um bloqueio exclusivo. Se outra instância já está rodando, ele sai sem fazer nada.
2. **Consulta a API.** Busca na API v2 do ClinicalTrials.gov os estudos que correspondem à condição, ao patrocinador e ao estado informados, percorrendo todas as páginas de resultado.
3. **Extrai os campos relevantes.** O `jq` reduz cada estudo a uma linha enxuta com identificador, patrocinador, composto em teste, status e datas estimadas.
4. **Ordena o resultado.** As linhas são ordenadas por identificador, preparando a comparação.
5. **Compara com o snapshot anterior.** Usando `comm` e `diff`, o script identifica estudos novos, removidos e, principalmente, aqueles cujo status mudou.
6. **Filtra as mudanças que importam.** Interessam especialmente as transições para encerrado, suspenso ou concluído.
7. **Notifica.** Para cada mudança relevante, envia uma mensagem estruturada a um webhook.
8. **Atualiza o snapshot.** O resultado de hoje passa a ser a referência de amanhã.
9. **Libera o bloqueio** e encerra.

---

## 4. Decisões de engenharia em Bash, explicadas

### 4.1 Detecção de deltas: por que comparar em vez de reprocessar tudo
Reenviar alertas sobre todos os estudos a cada execução seria inútil: a equipe seria inundada de ruído. A abordagem correta é guardar o estado anterior e **alertar apenas sobre a diferença**. Isso transforma uma base gigante em um pequeno conjunto de acontecimentos que merecem atenção.

### 4.2 Por que `sort`, `comm` e `diff`
Essas ferramentas clássicas do Unix foram feitas exatamente para comparar listas:

- **`sort`:** coloca as linhas em ordem. Sem isso, a comparação não funciona.
- **`comm`:** compara duas listas ordenadas e separa o que é exclusivo de cada uma e o que é comum. É extremamente rápida, mesmo com listas enormes.
- **`diff`:** mostra de forma detalhada as linhas que foram alteradas.

Um ponto crítico: `comm` **exige que as duas listas estejam ordenadas exatamente da mesma forma**. Por isso o snapshot é guardado já ordenado pela primeira coluna (o identificador do estudo), e é boa prática fixar a configuração de idioma durante a ordenação e a comparação. Se uma lista for ordenada com uma regra de idioma e outra com outra, o resultado pode ser silenciosamente errado.

### 4.3 Entendendo como uma mudança de status é detectada
O identificador do estudo é a chave estável. Se o mesmo identificador aparece nos dois snapshots, mas com status diferente, houve uma transição. É isso que o script compara. O filtro posterior seleciona apenas as transições com significado de negócio, como passar a encerrado, suspenso ou concluído.

### 4.4 Extração de JSON com saída em TSV
Os dados da API chegam em JSON, que é flexível mas inconveniente para comparar linha a linha. O `jq` converte cada estudo em uma linha com campos separados por tabulação (TSV). Esse formato é o ideal para o resto do pipeline: cada estudo ocupa uma linha, e `sort`, `comm` e `awk` entendem isso nativamente. É uma ponte entre o mundo estruturado do JSON e o mundo de texto do Unix.

### 4.5 Paginação da API
Como a base é grande, a API devolve os resultados em páginas e indica como pedir a próxima. O script continua pedindo até acabar. Se esse passo falhar ou parar no meio, o snapshot ficaria incompleto e o próximo ciclo interpretaria estudos faltantes como "removidos". Por isso, **um erro na coleta deve interromper o processo antes de atualizar o snapshot**.

### 4.6 Controle de concorrência com `flock`
Este pipeline roda de forma agendada (por exemplo, via Cron). Se uma execução demorar e a próxima começar antes da anterior terminar, duas instâncias poderiam ler e gravar o mesmo snapshot ao mesmo tempo, corrompendo o estado ou duplicando alertas.

O `flock` resolve isso usando um arquivo de bloqueio:

- A primeira execução adquire o bloqueio e segue.
- Uma segunda execução tenta adquirir e, se não conseguir, sai imediatamente.
- Quando o processo termina, por sucesso ou por falha, o sistema operacional libera o bloqueio automaticamente.

Essa liberação automática é a grande vantagem: não existe o risco de um bloqueio "esquecido" travar o sistema para sempre, como acontece com soluções baseadas em arquivos de marcação manuais.

### 4.7 Webhooks com payload montado de forma segura
Ao notificar, o script envia uma mensagem JSON por uma requisição POST. Montar esse JSON juntando textos manualmente é arriscado: nomes de empresas e compostos podem conter aspas e outros caracteres especiais que quebrariam a mensagem. A solução é usar o próprio `jq` para **construir o JSON**, passando os valores como argumentos. Assim, o escape é feito corretamente e de forma automática, e o payload nunca fica malformado.

---

## 5. Ferramentas utilizadas e o papel de cada uma

| Ferramenta | Papel no projeto |
|---|---|
| `curl` | Consulta a API do ClinicalTrials.gov e envia os webhooks. |
| `jq` | Extrai campos dos estudos, converte para TSV e constrói os payloads. |
| `sort` | Ordena os registros, pré-requisito da comparação. |
| `comm` / `diff` | Calculam o que é novo, removido ou alterado entre snapshots. |
| `flock` | Impede execuções simultâneas, no nível do sistema operacional. |

---

## 6. O que o monitor entrega

- **Alertas de transição de status:** aviso quando um estudo passa a encerrado, suspenso ou concluído.
- **Contexto da mudança:** patrocinador, composto em teste e datas estimadas, para que quem recebe o alerta entenda o que aconteceu sem abrir a base.
- **Histórico implícito:** como os snapshots evoluem, é possível reconstruir a linha do tempo de mudanças ao longo dos dias.

---

## 7. Limitações conhecidas

- **Dependência da atualização dos patrocinadores:** o registro só muda quando o patrocinador atualiza. Pode haver atraso entre o evento real e a publicação.
- **Primeira execução:** sem snapshot anterior, tudo parece novo. É preciso tratar esse caso para não gerar uma avalanche de alertas.
- **Estado local:** perder o snapshot significa perder a referência de comparação.
- **Filtros por texto:** buscar por patrocinador ou condição depende de como esses termos estão escritos no registro. Variações de grafia podem escapar.
- **Cobertura:** o projeto acompanha ensaios clínicos. Cartas e aprovações da FDA exigem fontes adicionais.
- **Mudanças na API:** se o formato da API mudar, os filtros do `jq` precisarão de ajuste.

---

## 8. Por que Bash para este projeto?

O problema central, **comparar duas listas ordenadas e notificar a diferença**, é um caso clássico para as ferramentas Unix, que fazem isso de forma extremamente eficiente. Bash permite:

- Comparar listas grandes com muito pouco uso de memória.
- Rodar em qualquer servidor Linux sem dependências extras.
- Manter um fluxo simples e auditável, no qual cada etapa é uma ferramenta pequena e conhecida.

O ponto de atenção é a disciplina com erros e com a consistência dos dados, já que uma coleta incompleta pode ser confundida com uma mudança real. Por isso o bloqueio, a ordenação consistente e a regra de só atualizar o snapshot após uma coleta bem-sucedida são centrais.

---

## 9. Exemplo de uso (descrição)

A execução recebe os critérios de busca: a condição médica de interesse (por exemplo, oncologia), o patrocinador a acompanhar (por exemplo, a Biogen) e o estado (Massachusetts). A cada rodada, o script compara o resultado com o snapshot anterior e avisa apenas sobre o que mudou. As demais opções estão descritas no cabeçalho de ajuda do próprio script.