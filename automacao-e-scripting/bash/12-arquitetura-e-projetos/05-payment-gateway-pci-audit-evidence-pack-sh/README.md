# 05 — Compilador Automatizado do Pacote de Evidências Técnicas para Auditoria PCI-DSS Level 1

## 🏢 Cenário de Negócios e Produção Real
Gateways de pagamento que passam por auditorias anuais rigorosas de segurança com avaliadores QSA externos.

### ⚠️ O Problema Real
Coletar dezenas de evidências manuais de firewall, logs de acesso, hashes de binários e configurações de criptografia custa semanas da equipe.

## 🚀 Arquitetura e Engenharia em Bash
Automação em Bash que varre todos os controles técnicos exigidos pelo PCI-DSS: regras de firewall ativas, permissões de arquivos de chave, relatórios de varredura de malware, configurações de TLS e compila tudo em um pacote estruturado e assinado digitalmente.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`tar, sha256sum, gpg, iptables, openssl`

## 📌 Exemplo de Execução CLI
```bash
./pci_evidence_pack.sh --period 2026-Q4 --output /audit/pci_dossier.tar.gz
```
