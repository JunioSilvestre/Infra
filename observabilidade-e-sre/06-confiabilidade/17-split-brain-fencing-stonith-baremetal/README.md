# Mecanismos de Fencing STONITH contra Split-Brain em Clusters Bare-Metal

## 1. Cenário de Produção Real
Dois servidores em um cluster de banco físico perderam comunicação de rede entre si e ambos tentaram assumir o controle do storage compartilhado.

## 2. O Problema Real
Desligar fisicamente a energia do nó suspeito (Shoot The Other Node In The Head) antes que ele consiga corromper os dados do disco.

## 3. Arquitetura e Engenharia da Solução
Configuração de agentes de fencing STONITH integrados às controladoras IPMI/iLO dos servidores gerenciados pelo Pacemaker.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** STONITH (Shoot The Other Node In The Head), IPMI Fencing, Split-Brain Defense
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
stonith_admin --reboot node-02
```
