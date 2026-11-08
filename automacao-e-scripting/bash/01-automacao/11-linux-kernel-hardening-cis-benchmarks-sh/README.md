# 11 — Linux Kernel Hardening & CIS Benchmarks Automator (Bash)

Script de nível extremo em Bash para auditoria contínua, aplicação e remediação automatizada das diretrizes de segurança **CIS (Center for Internet Security) Benchmarks** em servidores Linux corporativos.

## 🏢 Cenário de Negócios (Segurança & Compliance — Wall Street, Bancos e Saúde)
Instituições financeiras reguladas pela SEC/FINRA em Nova York e hospitais sob HIPAA em Boston exigem que todo servidor Linux (RHEL, Debian, Ubuntu) seja endurecido (*hardened*) antes de receber tráfego de produção, eliminando superfícies de ataque contra invasões e ransomware.

## 🚀 Arquitetura e Engenharia em Bash
- **Hardening de Parâmetros do Kernel (`sysctl`):** Desativação de roteamento de pacotes (`net.ipv4.ip_forward = 0`), proteção contra IP Spoofing (`rp_filter`), desativação de aceitação de ICMP Redirects e ativação de ASLR (`kernel.randomize_va_space = 2`).
- **Auditoria de Permissões Críticas:** Varredura recursiva de arquivos com bits SUID/SGID indevidos (`find / -perm /6000 -type f`) e arquivos com escrita global (`find / -perm -0002`).
- **Flags de Montagem em `/etc/fstab`:** Verificação de montagem com `noexec,nosuid,nodev` em `/tmp`, `/var/tmp` e `/dev/shm`.
- **Desativação de Módulos Inseguros:** Criação de regras em `/etc/modprobe.d/` para desabilitar sistemas de arquivos obsoletos (`cramfs`, `freevxfs`, `jffs2`, `hfs`, `udf`, `dccp`).
- **Relatório de Conformidade com Scoring:** Cálculo de porcentagem de aderência aos requisitos CIS Level 1 e Level 2.

## 🛠️ Ferramentas Nativas Utilizadas
- `sysctl` (inspeção e aplicação dinâmica de variáveis do kernel)
- `find`, `stat` (auditoria avançada de permissões e proprietários no VFS)
- `auditctl` / `ausearch` (configuração do subsistema de auditoria de chamadas de sistema do Linux)
- `systemctl` (desativação e mascaramento de daemons desnecessários)

## 📌 Exemplo de Execução
```bash
sudo ./cis_hardening.sh --mode audit --profile server-l2 --report /var/log/cis_audit.html
sudo ./cis_hardening.sh --mode enforce --dry-run
```

