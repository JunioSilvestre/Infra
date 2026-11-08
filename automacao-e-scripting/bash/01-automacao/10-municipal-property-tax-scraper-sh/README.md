# 10 — CT & NY Municipal Property Tax & Grand List Scraper (Bash)

Script em Bash puro para coleta e auditoria de registros públicos de impostos prediais e taxas de millage municipal em Connecticut e Nova York.

## 🏢 Cenário de Negócios (CT / NY — Real Estate PE & Wealth Management)
Em cidades de alto valor de Connecticut (Greenwich, Stamford, Westport) e condados de Nova York (Westchester, Nassau), as prefeituras disponibilizam dados de avaliação fiscal (Grand List) em portais públicos como o Vision Appraisal. Fundos de investimento imobiliário precisam coletar esses valores para identificar distorções de avaliação fiscal e protocolar recursos de redução tributária (*Tax Grievance*).

## 🚀 Arquitetura e Engenharia em Bash
- **Parsing de HTML sem Dependências:** Utilização de `grep -oP` e `sed` para extrair valores venais (Assessed Value) e taxas de imposto diretamente das páginas municipais.
- **Normalização de Dados Cadastrais:** Padronização de endereços, números de matrícula (Parcel ID) e áreas de terreno.
- **Cálculo de Desvio Médio via `awk`:** Comparação do imposto por pé quadrado (sq ft) do imóvel em relação à média dos vizinhos da mesma rua.
- **Exportação Estruturada:** Montagem de arquivos delimitados prontos para importação em bancos de dados ou relatórios executivos.

## 🛠️ Ferramentas Nativas Utilizadas
- `curl` (download de páginas de cartelas municipais)
- `grep` (expressões regulares Perl `-P` para extração precisa de campos monetários)
- `sed`, `tr` (limpeza de caracteres de controle, espaços extras e símbolos de moeda)
- `awk` (regras matemáticas de comparação de alíquotas de millage)

## 📌 Exemplo de Execução
```bash
./grandlist_audit.sh --city "Greenwich" --street "North St" --output /data/greenwich_taxes.csv
```

