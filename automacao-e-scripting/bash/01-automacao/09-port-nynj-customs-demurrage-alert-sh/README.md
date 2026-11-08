# 09 — Port of NY/NJ Customs & Demurrage Alert System (Bash)

Pipeline de automação em Bash para monitoramento de manifestos de contêineres e prevenção de multas de sobreestadia (demurrage) no complexo portuário de New York e New Jersey.

## 🏢 Cenário de Negócios (NY / NJ / CT — Operadores de Comércio Exterior)
No Porto de NY/NJ (Maher Terminals, APM Terminals Elizabeth, Port Newark), contêineres importados que permanecem no pátio após o término do "Free Time" (geralmente 4 a 5 dias) geram multas de US$ 250 a US$ 600 por dia por unidade. Transportadoras e despachantes precisam de alertas operacionais automáticos para retirar as cargas assim que ocorre a liberação alfandegária 1C (Customs Entry Release).

## 🚀 Arquitetura e Engenharia em Bash
- **Cálculo de Deadlines com `date -d`:** Conversão de carimbos de descarga de navio e cálculo de horas úteis restantes até a data fatal de demurrage.
- **Polling de Portais de Terminais:** Consultas autenticadas via `curl` simulando sessões HTTP seguras com cookies (`curl -c /tmp/cookies.txt -b /tmp/cookies.txt`).
- **Filtro de Contêineres em Risco:** Uso de `awk` para identificar apenas contêineres com menos de 24 horas de Free Time restante e que já estejam com status "Gate Pass Ready".
- **Disparo Multi-Canal:** Envio de SMS/alerta via gateway de operadora e webhook do Telegram/Slack.

## 🛠️ Ferramentas Nativas Utilizadas
- `curl` (gerenciamento de sessão HTTP, cookies e requisições REST)
- `date` (aritmética de tempo avançada e conversões de fuso horário EST/EDT)
- `awk` (filtragem condicional de linhas de manifestos de carga)
- `notify-send` / `logger` (notificações locais e corporativas)

## 📌 Exemplo de Execução
```bash
./demurrage_tracker.sh --manifest /data/shipments_port_nynj.tsv --alert-hours 24
```

