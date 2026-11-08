# Isolamento de Recursos de Serviços do Sistema com systemd slices e cgroups v2

## 1. Cenário de Produção Real
Um processo de backup executado no servidor consumia 100% dos ciclos de CPU e memória, degradando a API web principal que rodava no mesmo host.

## 2. O Problema Real
Limitar rigidamente os recursos máximos que serviços secundários e daemons podem consumir, preservando a estabilidade da aplicação principal.

## 3. Arquitetura e Engenharia da Solução
Criação de arquivos `.slice` customizados no systemd configurando `CPUQuota=30%`, `MemoryHigh=2G` e `MemoryMax=3G`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** systemd Resource Management, cgroups v2, systemd.slice, Linux Administration
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
systemd-cgtop
```
