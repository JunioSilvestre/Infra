# 04-seguranca — Segurança Defensiva, Hardening e Auditoria

Projetos de segurança corporativa, auditoria com auditd, detecção de invasão, gestão de segredos e conformidade PCI/SOC2.

---

## 🏛️ Trilha de Projetos Práticos de Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Negócio | Ferramentas Nativas Chave |
|---|---|---|---|
| **01** | [`01-auditd-syscall-intrusion-detector-sh/`](./01-auditd-syscall-intrusion-detector-sh) | **Detector de Intrusão Baseado em Syscalls com auditd e ausearch** | `auditctl, ausearch, aureport, awk, logger` |
| **02** | [`02-fail2ban-custom-threat-jail-sync-sh/`](./02-fail2ban-custom-threat-jail-sync-sh) | **Sincronizador de Jails Customizadas do Fail2ban e Bloqueio Global em Cluster** | `fail2ban-client, nft, ssh, jq` |
| **03** | [`03-hashicorp-vault-approle-token-renewer-sh/`](./03-hashicorp-vault-approle-token-renewer-sh) | **Renovador e Injetor Seguro de Segredos com HashiCorp Vault AppRole** | `curl, jq, vault, /dev/shm, trap` |
| **04** | [`04-suid-sgid-unauthorized-binary-scanner-sh/`](./04-suid-sgid-unauthorized-binary-scanner-sh) | **Scanner e Auditor de Binários com Bits SUID e SGID Não Autorizados** | `find, stat, diff, chmod, sha256sum` |
| **05** | [`05-ssh-mfa-google-authenticator-enforcer-sh/`](./05-ssh-mfa-google-authenticator-enforcer-sh) | **Provisionador e Auditor de Autenticação Multifator (MFA/TOTP) para SSH** | `google-authenticator, sed, sshd, systemctl` |
| **06** | [`06-rootkit-rkhunter-chkrootkit-automator-sh/`](./06-rootkit-rkhunter-chkrootkit-automator-sh) | **Orquestrador e Analisador de Varredura de Rootkits com rkhunter e chkrootkit** | `rkhunter, chkrootkit, sha256sum, mailx` |
| **07** | [`07-gpg-keyring-backup-smartcard-validator-sh/`](./07-gpg-keyring-backup-smartcard-validator-sh) | **Gerenciador e Validador de Chaves GPG Corporativas e Tokens Hardware** | `gpg, awk, date, tar` |
| **08** | [`08-apparmor-selinux-policy-enforcer-sh/`](./08-apparmor-selinux-policy-enforcer-sh) | **Auditor e Aplicador de Perfis AppArmor / SELinux para Daemons Críticos** | `aa-status, aa-enforce, sestatus, setenforce, audit2why` |
| **09** | [`09-secrets-git-commit-pre-push-hook-sh/`](./09-secrets-git-commit-pre-push-hook-sh) | **Pre-Push Hook e Scanner de Chaves de API e Segredos em Repositórios Git** | `git, grep -E, sed, awk` |
| **10** | [`10-clamav-malware-quarantine-pipeline-sh/`](./10-clamav-malware-quarantine-pipeline-sh) | **Pipeline Automatizado de Varredura e Quarentena com ClamAV** | `clamscan, freshclam, find, chmod, mailx` |
| **11** | [`11-ip-threat-intel-blocklist-sync-sh/`](./11-ip-threat-intel-blocklist-sync-sh) | **Sincronizador e Injetor de Listas Globais de Inteligência de Ameaças (Threat Intel)** | `curl, awk, ipset, nft, sha256sum` |
| **12** | [`12-pki-internal-sub-ca-cert-revoker-sh/`](./12-pki-internal-sub-ca-cert-revoker-sh) | **Revogador de Emergência e Geração de CRL para Sub-CAs Internas** | `openssl, aws, curl, systemctl` |
| **13** | [`13-sudo-privilege-escalation-alerter-sh/`](./13-sudo-privilege-escalation-alerter-sh) | **Monitor em Tempo Real de Escalonamento de Privilégios e Comandos Sudo** | `tail, awk, logger, curl, jq` |
| **14** | [`14-sensitive-file-integrity-aide-tripwire-sh/`](./14-sensitive-file-integrity-aide-tripwire-sh) | **Auditor de Integridade de Arquivos Sensíveis do Sistema com AIDE** | `aide, sha512sum, diff, mailx` |
| **15** | [`15-ssh-honeypot-telemetry-collector-sh/`](./15-ssh-honeypot-telemetry-collector-sh) | **Honeypot SSH Leve em Bash com Captura de Credenciais de Ataque** | `socat, nc, awk, jq, logger` |
| **16** | [`16-wireguard-traffic-pcap-inspector-sh/`](./16-wireguard-traffic-pcap-inspector-sh) | **Inspetor e Auditor de Metadados de Tráfego de VPN WireGuard** | `tcpdump, tshark, awk, sort, uniq` |
| **17** | [`17-openssh-kex-ciphers-hardening-sh/`](./17-openssh-kex-ciphers-hardening-sh) | **Hardening Estrito de Ciphers, MACs e Troca de Chaves (KEX) do OpenSSH** | `sshd, sed, ssh-keyscan, systemctl` |
| **18** | [`18-data-loss-prevention-usb-mount-blocker-sh/`](./18-data-loss-prevention-usb-mount-blocker-sh) | **Prevenção de Fuga de Dados (DLP) com Bloqueio de Dispositivos USB de Armazenamento** | `udevadm, modprobe, logger, sysctl` |
| **19** | [`19-luks-encrypted-volume-key-manager-sh/`](./19-luks-encrypted-volume-key-manager-sh) | **Gerenciador de Slots de Chave e Rotação Criptográfica de Volumes LUKS** | `cryptsetup, shred, dd, logger` |
| **20** | [`20-pci-dss-access-review-evidence-collector-sh/`](./20-pci-dss-access-review-evidence-collector-sh) | **Coletor Automatizado de Evidências de Acesso e Contas para Auditoria PCI-DSS** | `chage, getent, last, tar, sha256sum, gpg` |
