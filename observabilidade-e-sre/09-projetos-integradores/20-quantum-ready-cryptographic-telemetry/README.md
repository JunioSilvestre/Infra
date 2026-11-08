# Telemetria e Auditoria de Migração para Algoritmos Criptográficos Pós-Quânticos

## 1. Cenário de Produção Real
Grandes bancos se preparando para a transição obrigatória para criptografia pós-quântica (PQC) padronizada pelo NIST.

## 2. O Problema Real
Descobrir e auditar em tempo real quais conexões TLS e certificados da empresa ainda utilizam algoritmos clássicos vulneráveis (RSA/ECC).

## 3. Arquitetura e Engenharia da Solução
Sensores eBPF em nível de kernel inspecionando handshakes TLS em balanceadores de carga e gerando relatórios de conformidade pós-quântica.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Post-Quantum Cryptography Telemetry, NIST PQC Standards, eBPF TLS Inspection, Quantum Readiness
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python audit_quantum_readiness.py --interface eth0
```
