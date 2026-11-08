# 05 — Biblioteca de Cálculos Matemáticos e Aritmética de Ponto Flutuante com bc

## 🏢 Cenário de Negócios e Produção Real
Cálculo de alíquotas fiscais, médias de latência e porcentagens de uso de disco em Bash.

### ⚠️ O Problema Real
O interpretador Bash suporta nativamente apenas números inteiros; divisões como 5/2 resultam em 2.

## 🚀 Arquitetura e Engenharia em Bash
Funções matemáticas 'math_eval', 'math_round', 'math_pct', 'math_max', 'math_min' que encapsulam o utilitário bc com controle explícito de escala decimal e proteção contra divisão por zero.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`bc, printf`

## 📌 Exemplo de Execução CLI
```bash
source lib/math.sh && res=$(math_pct 45 120 2) # Retorna 37.50
```
