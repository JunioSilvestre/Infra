# 05 — USPTO Patent Pipeline Downloader & Extractor (Bash)

Uma automação em Bash para **baixar em lote, descompactar e catalogar patentes concedidas pelo USPTO** (Escritório de Patentes e Marcas dos EUA), com foco em universidades e laboratórios de Massachusetts. A preocupação central é lidar com arquivos enormes **sem estourar o disco e sem desperdiçar tempo**.

Este documento explica **o problema, o raciocínio por trás do desenho e como cada peça funciona**, sem entrar em código.

---

## 1. O problema que o projeto resolve

O USPTO publica periodicamente arquivos em massa com todas as patentes concedidas. Cada arquivo semanal pode ocupar vários gigabytes, e ao longo de um ano isso vira um volume considerável. Quem trabalha com propriedade intelectual normalmente não precisa de tudo: quer só as patentes de certas áreas, de certos titulares ou de certa região.

O desafio é triplo:

- **Espaço:** guardar tudo, compactado e descompactado, seria desnecessariamente caro.
- **Tempo:** baixar e processar arquivos grandes em sequência é lento.
- **Confiança:** um arquivo corrompido no meio do caminho pode contaminar a análise sem que ninguém perceba.

O projeto responde a isso com um fluxo que **baixa, extrai só o necessário, verifica a integridade e cataloga**, minimizando o que fica em disco.

### Cenário de negócios (MA — MIT & Harvard Tech Transfer)
Escritórios de licenciamento tecnológico e bancas de propriedade intelectual de Boston acompanham semanalmente as concessões publicadas pelo USPTO, que costumam sair às terças-feiras. Eles querem filtrar áreas estratégicas, como biotecnologia, computação quântica e robótica, para identificar oportunidades de licenciamento e movimentos de concorrentes.

---

## 2. Vocabulário essencial

- **USPTO:** o órgão federal que examina e concede patentes e registra marcas nos EUA.
- **Bulk data (dados em massa):** arquivos periódicos que reúnem todas as patentes publicadas em um período.
- **XML:** formato de texto estruturado por marcações (tags) em que cada patente é descrita.
- **Classificação (CPC):** sistema que organiza patentes por área técnica. O código G06N, por exemplo, cobre modelos computacionais específicos, incluindo áreas como aprendizado de máquina e computação quântica.
- **Stream (fluxo):** processar os dados enquanto eles chegam, sem gravá-los inteiros antes.
- **Checksum / hash:** uma "impressão digital" do arquivo, usada para confirmar que ele chegou idêntico ao original.
- **Assignee (cessionário):** o titular da patente, normalmente uma organização.

---

## 3. Como o pipeline funciona, passo a passo

1. **Determina o que baixar.** Com base no ano e na categoria pedidos, o script monta a lista de arquivos semanais.
2. **Baixa vários arquivos ao mesmo tempo.** O trabalho é distribuído em paralelo, com repetição automática em caso de falha de rede.
3. **Extrai só o necessário.** Em vez de descompactar tudo em disco, o conteúdo é aberto em fluxo e apenas as partes úteis são gravadas.
4. **Verifica a integridade.** O arquivo é conferido contra o hash oficial, quando disponível.
5. **Extrai os campos de interesse.** Título da invenção, titular e número do documento são retirados do texto.
6. **Filtra por categoria e região.** Ficam só as patentes na classificação desejada e, se pedido, ligadas a titulares de Massachusetts.
7. **Cataloga o resultado.** Gera um índice organizado no destino escolhido.
8. **Limpa o que sobrou.** Arquivos temporários são removidos.

---

## 4. Decisões de engenharia em Bash, explicadas

### 4.1 Streaming: o segredo para não estourar o disco
A abordagem ingênua é baixar o arquivo completo, descompactar por inteiro e só então filtrar. Isso exige espaço para o arquivo compactado **mais** o descompactado, que pode ser várias vezes maior.

No streaming, a saída do download entra diretamente no descompactador por meio de um pipe, e só o que interessa é gravado. O disco nunca vê o arquivo inteiro. É a mesma lógica de uma linha de montagem: cada etapa recebe o resultado da anterior sem estocar nada no meio.

O custo desse modelo é importante e merece registro:

- **Retomada de download:** o recurso de continuar de onde parou funciona com arquivos gravados em disco, mas **não se combina com um fluxo direto em pipe**. Se a conexão cair no meio, o processamento daquele arquivo precisa recomeçar.
- **Verificação de integridade:** conferir um hash exige ler o arquivo completo. Em streaming, isso só é possível se o fluxo for também desviado para calcular o hash enquanto passa, ou se o arquivo for baixado antes. É uma troca consciente entre economia de disco e facilidade de verificação.

### 4.2 Download paralelo com `xargs`
O `xargs` distribui vários downloads simultâneos. Um esclarecimento: baixar arquivos é uma tarefa limitada principalmente pela **rede**, e não pela CPU. Então o ganho do paralelismo depende de a largura de banda e o servidor suportarem várias conexões. Aumentar demais o número de downloads simultâneos pode não acelerar nada, e pode até levar o servidor a limitar ou recusar conexões. O número de processos deve ser calibrado com bom senso.

### 4.3 Repetição com espera crescente
Redes falham, e servidores às vezes respondem com erro temporário. Em vez de desistir ou de insistir sem pausa, a estratégia recomendada é tentar de novo esperando um pouco mais a cada tentativa (retry exponencial). Isso dá tempo ao servidor para se recuperar e evita sobrecarregá-lo.

### 4.4 Descompressão: onde o `pigz` ajuda e onde não
O `pigz` é uma versão paralela do `gzip`. Ele acelera bastante a **compressão**. Na **descompressão**, porém, o ganho é limitado: o formato gzip foi desenhado de forma sequencial, então só uma parte do trabalho consegue ser paralelizada. Vale testar antes de assumir que o ganho será grande. Além disso, o formato em que o USPTO distribui os arquivos pode mudar (arquivos zip, por exemplo, exigem outras ferramentas), e é importante confirmar na fonte oficial qual formato está em uso.

### 4.5 Extração com `grep`, `sed` e `awk`
Os arquivos de patentes são enormes, e carregar tudo em memória como uma árvore de objetos seria pesado. Ferramentas de texto leem linha a linha e consomem pouquíssima memória, o que as torna muito rápidas para extrair campos como título, titular e número do documento.

Há, porém, um preço: tratar XML como texto simples é **frágil**.

- Uma tag que mude de formato, que apareça quebrada em várias linhas ou que tenha atributos inesperados pode passar despercebida ou gerar leituras erradas.
- Um detalhe prático dos arquivos de concessões é que eles costumam reunir **muitos documentos XML concatenados em um único arquivo**, o que torna a leitura por ferramentas de XML convencionais menos direta e explica por que a abordagem por texto é tentadora.

Para uma catalogação de uso interno, a abordagem textual é uma troca razoável de simplicidade por velocidade. Se a precisão passar a ser crítica, convém considerar um leitor de XML em fluxo.

### 4.6 Verificação de integridade com `sha256sum`
Comparar o hash calculado com o hash oficial garante que o arquivo não foi corrompido nem alterado. Dois cuidados: é preciso confirmar na fonte do USPTO se hashes oficiais são de fato publicados para cada arquivo, e é preciso decidir o que fazer quando a verificação falha (descartar o arquivo e baixar de novo, em vez de seguir adiante em silêncio).

---

## 5. Ferramentas utilizadas e o papel de cada uma

| Ferramenta | Papel no projeto |
|---|---|
| `curl` / `wget` | Baixam os arquivos, com repetição automática em falhas. |
| `tar` / `gzip` / `pigz` | Abrem os arquivos compactados, em fluxo. |
| `xargs` | Distribui vários downloads em paralelo. |
| `grep` / `sed` / `awk` | Extraem e filtram campos do texto dos documentos. |
| `sha256sum` | Confere a integridade dos arquivos. |

---

## 6. O que o pipeline entrega

- **Dados filtrados:** apenas as patentes da categoria e da região de interesse.
- **Índice catalogado:** título, titular e número do documento organizados para consulta.
- **Economia de espaço:** como só o necessário é gravado, o armazenamento cresce muito menos do que cresceria guardando tudo.

---

## 7. Limitações conhecidas

- **Sem retomada em modo streaming:** uma queda de conexão obriga a reprocessar o arquivo.
- **Parsing textual frágil:** mudanças no formato do XML podem quebrar a extração sem aviso.
- **Formato e endereço da fonte:** o USPTO pode alterar onde e como distribui os arquivos. É preciso conferir periodicamente.
- **Filtro por região:** depende de o campo de localização do titular estar preenchido de forma consistente.
- **Verificação de integridade:** depende da disponibilidade de hashes oficiais e de como são distribuídos.
- **Limites de conexão:** paralelismo excessivo pode ser tratado pelo servidor como abuso.

---

## 8. Por que Bash para este projeto?

O trabalho é essencialmente **mover grandes volumes de dados por uma cadeia de ferramentas**: baixar, descompactar, filtrar e gravar. Esse é o terreno em que pipes e utilitários Unix mais se destacam. Bash permite:

- Processar arquivos muito maiores que a memória disponível, graças ao fluxo contínuo.
- Reaproveitar ferramentas robustas e já presentes em qualquer servidor Linux.
- Manter o fluxo simples de ler: cada etapa faz uma coisa e passa o resultado adiante.

O ponto de atenção é equilibrar economia de disco com robustez: o que se ganha em espaço pelo streaming se paga em recursos como retomada e verificação, e o parsing por texto pede cuidado com a fragilidade.

---

## 9. Exemplo de uso (descrição)

A execução recebe o ano a ser sincronizado, a categoria de classificação de interesse (por exemplo, G06N) e a pasta de destino onde o catálogo será gravado. As demais opções estão descritas no cabeçalho de ajuda do próprio script.