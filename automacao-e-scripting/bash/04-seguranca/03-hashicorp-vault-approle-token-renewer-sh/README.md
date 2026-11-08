# 03 — Renovador e Injetor Seguro de Segredos com HashiCorp Vault AppRole

## 🏢 Cenário de Negócios e Produção Real
Scripts de automação que precisam consumir credenciais de banco e chaves de API sem gravar senhas em texto plano.

### ⚠️ O Problema Real
Tokens do Vault expiram após o TTL estipulado; se não renovados, o script quebra durante a madrugada.

## 🚀 Arquitetura e Engenharia em Bash
Autenticação inicial com RoleID/SecretID, obtenção do client_token, armazenamento seguro em memória compartilhada temporária (/dev/shm) com permissão 0600, loop de renovação periódica com 'vault token renew' e limpeza garantida no trap.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, jq, vault, /dev/shm, trap`

## 📌 Exemplo de Execução CLI
```bash
./vault_agent.sh --role-id '$VAULT_ROLE' --secret-id '$VAULT_SECRET' --path secret/db
```
