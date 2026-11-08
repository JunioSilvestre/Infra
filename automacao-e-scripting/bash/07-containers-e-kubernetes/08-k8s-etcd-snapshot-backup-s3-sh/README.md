# 08 — Backup Automatizado de Snapshots do etcd do Kubernetes com Envio Criptografado para S3

## 🏢 Cenário de Negócios e Produção Real
Proteção do plano de controle (Control Plane) de clusters Kubernetes corporativos contra desastres catastróficos.

### ⚠️ O Problema Real
Corrupção da base do etcd destrói completamente todo o estado do cluster Kubernetes sem possibilidade de recuperação sem snapshot.

## 🚀 Arquitetura e Engenharia em Bash
Criação de snapshot atômico com 'etcdctl snapshot save' utilizando certificados mTLS do cluster, verificação de integridade com 'etcdctl snapshot status', compressão com gzip, criptografia com OpenSSL e upload seguro para bucket S3 com retenção de 30 dias.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`etcdctl, openssl, aws, gzip, logger`

## 📌 Exemplo de Execução CLI
```bash
./backup_etcd.sh --cacert /etc/kubernetes/pki/etcd/ca.crt --s3-bucket k8s-backups-corp
```
