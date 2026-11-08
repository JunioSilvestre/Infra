# 15 — Orquestrador de Testes em Dispositivos Físicos Reais em Nuvem (Device Farm / BrowserStack)

## 🏢 Cenário de Produção e Vida Real
Validação de aplicativos React Native / Flutter em dezenas de modelos de smartphones reais (Android e iOS).

### ⚠️ O Problema Real
Emuladores locais não reproduzem bugs específicos de fabricantes (Samsung, Xiaomi, Apple).

## 🚀 Arquitetura e Engenharia de CI/CD
Upload do binário (.apk / .ipa) via API para a farm de dispositivos, disparo da suíte de testes Appium/Maestro e consolidação de relatórios com screenshots e logs.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`maestro, appium, curl, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
maestro test .maestro/flow_login.yaml
```
