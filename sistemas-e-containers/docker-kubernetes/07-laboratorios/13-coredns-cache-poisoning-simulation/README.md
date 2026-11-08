# Auditoria e Teste de Resiliência de DNS contra Envenenamento de Respostas

## 1. Cenário de Produção Real
Garantir que instâncias de CoreDNS não aceitem registros forjados e validem respostas de servidores upstream com segurança.

## 2. O Problema Real
Testar o comportamento do cluster quando servidores DNS externos de upstream caem ou começam a enviar respostas maliciosas.

## 3. Arquitetura e Engenharia da Solução
Configuração de plugins de DNSSEC no CoreDNS e testes de consulta com ferramentas de inspeção de pacotes `dig` e `dnstap`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** CoreDNS Plugins, DNSSEC, dnstap, Packet Analysis, Network Security
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl exec -it dns-tools -- dig @10.96.0.10 my-service.prod.svc.cluster.local +dnssec
```
