# 07 — Gerenciamento Seguro de Arquivos de Assinatura Mobile com Project Secure Files

## 🏢 Cenário de Produção e Vida Real
Compilação e assinatura de apps Android (.jks) e iOS (.p12/provisioning profiles) no GitLab CI.

### ⚠️ O Problema Real
Armazenar certificados binários em variáveis de texto base64 é frágil e sujeito a corrupção.

## 🚀 Arquitetura e Engenharia de CI/CD
Upload dos certificados criptografados no recurso nativo 'Secure Files' do GitLab, download autenticado seguro durante o job de build via CLI oficial e limpeza imediata.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, gitlab-secure-files, jarsigner`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
curl -s https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/download-secure-files/-/raw/main/installer | bash
```
