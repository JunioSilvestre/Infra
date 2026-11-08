# 08 — Template Compartilhado de Portão de Segurança e Compliance Corporativo

## 🏢 Cenário de Produção e Vida Real
Inclusão mandatória de todos os checks de segurança exigidos pelo SOC 2 em qualquer repositório novo.

### ⚠️ O Problema Real
Squads esquecendo de configurar scanners de segredos ou SAST em seus projetos.

## 🚀 Arquitetura e Engenharia de CI/CD
Workflow corporativo que encapsula Gitleaks (segredos), Semgrep (SAST), Trivy (SCA) e verificação de licenças em um único job paralelo que pode ser chamado com uma única linha de código.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`gitleaks, semgrep, trivy, license-checker`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# uses: my-corp/ci-templates/.github/workflows/security-gate.yml@v1
```
