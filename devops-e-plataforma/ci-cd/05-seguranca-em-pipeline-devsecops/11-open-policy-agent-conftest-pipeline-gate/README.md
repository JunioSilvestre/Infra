# 11 — Portão de Políticas Corporativas de Segurança com Open Policy Agent (OPA) e Conftest

## 🏢 Cenário de Produção e Vida Real
Aplicação de regras de governança estritas (ex: 'todo container deve ter limites de CPU/RAM definidos').

### ⚠️ O Problema Real
Engenheiros ignoram padrões de confiabilidade e sobem manifestos sem restrições de recursos.

## 🚀 Arquitetura e Engenharia de CI/CD
Definição de políticas em linguagem Rego, execução do Conftest contra manifestos YAML e Dockerfiles no pipeline, bloqueando configurações fora da conformidade com mensagens claras.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`conftest, opa, yaml`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
conftest test --policy ./policy/ deployments.yaml
```
