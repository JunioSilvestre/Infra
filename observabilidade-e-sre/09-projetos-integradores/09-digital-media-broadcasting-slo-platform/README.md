# Plataforma de Monitoramento de Qualidade de Experiência (QoE) de Streaming 4K

## 1. Cenário de Produção Real
Rede de televisão digital em Manhattan transmitindo eventos esportivos ao vivo para milhões de telespectadores simultâneos.

## 2. O Problema Real
Monitorar métricas de qualidade de vídeo (taxa de bitrate, tempo de buffering de vídeo e erros de reprodução) direto dos players dos usuários.

## 3. Arquitetura e Engenharia da Solução
Coleta de telemetria de clientes via endpoints de beacon HTTP, agregação em tempo real com Vector e cálculo contínuo de Apdex de vídeo.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Video QoE Monitoring, Vector Log Aggregator, Apdex Score, Media Streaming SRE
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://localhost:8686/health
```
