# Validação Automatizada de Cobertura de Documentação de Módulos no CI

## 1. Cenário de Produção Real
Módulos corporativos eram publicados sem descrição de variáveis ou com outputs não documentados, dificultando a reutilização.

## 2. O Problema Real
Bloquear a publicação de qualquer módulo que não possua 100% de suas variáveis e saídas explicadas com textos descritivos claros.

## 3. Arquitetura e Engenharia da Solução
Linter de documentação verificando se todos os blocos `variable` e `output` contêm o atributo `description` preenchido.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Documentation Linting, Developer Standards, Quality Assurance, Code Review
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python lint_module_docs.py --path ./modules/
```
