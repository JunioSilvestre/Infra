# 20 — Coletor Automatizado de Evidências de Acesso e Contas para Auditoria PCI-DSS

## 🏢 Cenário de Negócios e Produção Real
Preparação para auditorias trimestrais de conformidade com os requisitos 7 e 8 do padrão PCI-DSS.

### ⚠️ O Problema Real
Engenheiros gastam dias tirando prints manuais e rodando comandos um a um para enviar aos auditores.

## 🚀 Arquitetura e Engenharia em Bash
Extração padronizada de lista de usuários com privilégios sudo, histórico de alterações em arquivos críticos, contas inativas há mais de 90 dias (via chage -l), empacotamento em tar.gz com hash SHA-256 e assinatura digital GPG.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`chage, getent, last, tar, sha256sum, gpg`

## 📌 Exemplo de Execução CLI
```bash
./pci_evidence_collector.sh --period 'Q4-2026' --output /var/audit/pci_evidence.tar.gz
```
