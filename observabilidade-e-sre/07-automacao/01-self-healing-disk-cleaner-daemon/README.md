# Remediação Autônoma de Esgotamento de Disco em Nós de Produção (DiskPressure)

## 1. Cenário de Produção Real
Servidores de produção travavam de madrugada quando arquivos temporários e logs enchiam o disco raiz (`/var/log`), derrubando nós.

## 2. O Problema Real
Detectar preventivamente nós com espaço de disco acima de 85% e expurgar imagens mortas, containers órfãos e arquivos de dump.

## 3. Arquitetura e Engenharia da Solução
Daemon privilegiado monitorando `df` a cada 30 segundos; se atingir o threshold, executa `crictl rmi --prune` e envia relatório ao Slack.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Self-Healing Infrastructure, DiskPressure Mitigation, crictl, Shell Scripting
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
/usr/local/bin/auto-disk-healer.sh --threshold 85
```
