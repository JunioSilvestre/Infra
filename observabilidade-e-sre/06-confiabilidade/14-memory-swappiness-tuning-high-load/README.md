# Tuning de Swappiness e Prevenção de Thrashing de Memória em Alta Carga

## 1. Cenário de Produção Real
Servidores Linux com 90% de RAM começavam a fazer swap agressivo em disco, gerando picos gigantescos de I/O wait e travando aplicações.

## 2. O Problema Real
Evitar a sobrecarga de I/O ajustando a agressividade de swap do kernel e garantindo que o sistema priorize a memória RAM física.

## 3. Arquitetura e Engenharia da Solução
Configuração de `vm.swappiness = 1` e `vm.vfs_cache_pressure = 50` em servidores de produção com validação contínua.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Linux Memory Management, vm.swappiness, Memory Thrashing Prevention, SRE
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
cat /proc/sys/vm/swappiness
```
