# 12 — Fábrica e Gerador Automatizado de Massa de Dados Isolada para Testes de Integração

## 🏢 Cenário de Produção e Vida Real
Prevenção de testes instáveis causados por dados compartilhados ou poluídos por testes anteriores.

### ⚠️ O Problema Real
Testes concorrentes alteram o mesmo usuário no banco de teste, causando falhas intermitentes aleatórias.

## 🚀 Arquitetura e Engenharia de CI/CD
Criação sob demanda de fixtures exclusivas por teste com dados realistas (Bogus / Faker), injeção com transações isoladas e limpeza atômica no teardown.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`faker, python3, psql`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./seed_test_data.sh --tenant test-tenant-42 --clean-after
```
