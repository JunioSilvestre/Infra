# Provisionamento Automatizado de Telas em Modo Kiosk Desassistido

## 1. Cenário de Produção Real
Telas de monitoramento espalhadas pelos escritórios deslogavam constantemente ou travavam por falta de recarregamento programado.

## 2. O Problema Real
Automatizar a inicialização de navegadores em modo quiosque sem barras de ferramentas e com rotação automática de playlists de dashboards.

## 3. Arquitetura e Engenharia da Solução
Script de automação configurando Grafana Playlists com autenticação por token de serviço e script de inicialização do Chromium em tela cheia.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Grafana Playlists, Kiosk Mode, Digital Signage, Raspberry Pi/Linux Displays
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
chromium-browser --kiosk 'http://grafana.corp/playlists/play/1?kiosk'
```
