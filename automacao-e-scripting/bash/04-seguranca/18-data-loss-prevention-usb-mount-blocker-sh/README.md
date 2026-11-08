# 18 — Prevenção de Fuga de Dados (DLP) com Bloqueio de Dispositivos USB de Armazenamento

## 🏢 Cenário de Negócios e Produção Real
Estações de trabalho e servidores físicos de ambiente crítico onde a inserção de pendrives e discos externos é estritamente proibida.

### ⚠️ O Problema Real
Exfiltração de dados confidenciais diretamente via portas físicas USB ou infecção por BadUSB.

## 🚀 Arquitetura e Engenharia em Bash
Criação de regras de Udev em /etc/udev/rules.d/ para desabilitar o driver usb-storage ('SUBSYSTEM=="usb", ATTR{authorized}="0"'), blacklist do módulo usb_storage no kernel e alerta sonoro/syslog quando um dispositivo for inserido.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`udevadm, modprobe, logger, sysctl`

## 📌 Exemplo de Execução CLI
```bash
./usb_blocker.sh --enforce-udev --blacklist-driver --status
```
