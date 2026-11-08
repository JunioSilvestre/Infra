# Detector e Corretor Autônomo de Tabelas de Roteamento Quebradas em Linux

## 1. Cenário de Produção Real
Atualizações de rede ou falhas em túneis VPN deixavam a rota padrão (`default gateway`) apontando para interfaces inativas.

## 2. O Problema Real
Identificar a perda de conectividade externa e restaurar a rota padrão funcional sem necessidade de acesso local por console físico.

## 3. Arquitetura e Engenharia da Solução
Script executado por timer systemd que testa ping em IPs confiáveis; se falhar por 3 tentativas, restabelece a tabela de rotas correta.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Linux Routing Self-Healing, ip route, Network Troubleshooting, Automated Triage
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
/usr/local/bin/network-route-watchdog.sh
```
