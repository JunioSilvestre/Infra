# 15 — Auditor e Scanner de Conformidade de Licenças de Software Open Source

## 🏢 Cenário de Produção e Vida Real
Prevenção de riscos jurídicos causados por dependências que utilizam licenças GPL estritas ou contaminantes em software proprietário.

### ⚠️ O Problema Real
Desenvolvedor inclui biblioteca com licença inadequada que obriga a empresa a abrir o código-fonte comercial.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução do scanner de licenças (license-finder ou Syft) no pipeline, comparação contra lista de licenças aprovadas pelo departamento jurídico (MIT, Apache-2.0, BSD) e trava do build se houver incompatibilidade.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`license-finder, syft, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
license_finder --decisions-file config/dependency_decisions.yml
```
