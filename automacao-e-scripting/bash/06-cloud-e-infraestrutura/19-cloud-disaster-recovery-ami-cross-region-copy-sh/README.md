# 19 — Orquestrador de Disaster Recovery com Replicação de AMIs e Snapshots Cross-Region

## 🏢 Cenário de Negócios e Produção Real
Plano de recuperação de desastres (DR) para sistemas corporativos com exigência de RTO < 2h e RPO < 24h.

### ⚠️ O Problema Real
Se a região principal da nuvem (ex: us-east-1) ficar indisponível por horas, o negócio para completamente.

## 🚀 Arquitetura e Engenharia em Bash
Criação de imagem (AMI) consistente de instâncias críticas sem reboot desnecessário, cópia criptografada da AMI para região de contingência (us-west-2), aplicação de tags de versão e purga de AMIs de contingência antigas.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`aws, jq, date, sleep`

## 📌 Exemplo de Execução CLI
```bash
./dr_ami_replication.sh --instance-id i-0abc123 --dest-region us-west-2 --retention 7
```
