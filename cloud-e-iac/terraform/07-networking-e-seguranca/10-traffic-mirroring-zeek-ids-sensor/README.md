# Espelhamento de Tráfego de Rede (VPC Traffic Mirroring) para Sensores Zeek/Suricata

## 1. Cenário de Produção Real
Times de detecção de ameaças (Threat Hunting) precisavam analisar pacotes brutos de rede sem instalar agentes pesados dentro dos servidores.

## 2. O Problema Real
Duplicar silenciosamente todo o tráfego de rede de instâncias críticas e enviar para um appliance centralizado de análise forense.

## 3. Arquitetura e Engenharia da Solução
Configuração de AWS Traffic Mirror Sessions e Filters apontando para uma interface de rede elástica (ENI) conectada a um sensor Zeek IDS.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Traffic Mirroring, Zeek Network Security Monitor, Suricata IDS, Threat Hunting
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws ec2 describe-traffic-mirror-sessions
```
