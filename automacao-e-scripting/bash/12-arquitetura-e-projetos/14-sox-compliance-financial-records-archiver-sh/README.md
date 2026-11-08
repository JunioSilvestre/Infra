# 14 — Arquivador Imutável de Registros Contábeis e Logs Financeiros Conforme SOX (Sarbanes-Oxley)

## 🏢 Cenário de Negócios e Produção Real
Conformidade com a lei Sarbanes-Oxley (SOX) em instituições financeiras exigindo custódia imutável de transações contábeis por 7 anos.

### ⚠️ O Problema Real
Qualquer alteração ou exclusão de registros financeiros por administradores constitui crime federal.

## 🚀 Arquitetura e Engenharia em Bash
Coleta diária de logs e transações contábeis, cálculo de árvore de Merkle dos hashes dos arquivos, geração de carimbo de tempo RFC 3161 (Trusted Timestamping) com autoridade externa via OpenSSL, gravação em storage WORM (Write Once, Read Many) e travamento de imutabilidade local.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`openssl, sha256sum, chattr, curl`

## 📌 Exemplo de Execução CLI
```bash
./sox_archiver.sh --records-dir /data/financial --tsa-url 'http://tsa.safe.net'
```
