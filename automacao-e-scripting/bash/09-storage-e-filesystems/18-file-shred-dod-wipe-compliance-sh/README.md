# 18 — Destruidor Seguro de Arquivos Conforme Padrão DoD 5220.22-M e NIST 800-88

## 🏢 Cenário de Negócios e Produção Real
Exclusão definitiva de chaves de criptografia expiradas, relatórios médicos ou financeiros confidenciais de discos físicos.

### ⚠️ O Problema Real
O comando 'rm' tradicional apenas remove o ponteiro do sistema de arquivos; os dados continuam intactos nos blocos do disco e podem ser recuperados com facilidade.

## 🚀 Arquitetura e Engenharia em Bash
Sobrescrita de dados com múltiplas passadas de padrões aleatórios e zeros via 'shred -u -z -n 3', truncamento de tamanho para zero bytes e validação de que os blocos foram zerados antes da deleção final.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`shred, srm, dd, stat`

## 📌 Exemplo de Execução CLI
```bash
./shred_secure.sh --file /secure/private_key.pem --passes 3 --verify-zero
```
