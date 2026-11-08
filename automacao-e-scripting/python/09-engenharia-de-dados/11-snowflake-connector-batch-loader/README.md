# Carregador e Orquestrador de Dados para Snowflake com Autenticação de Chave Privada

## 1. Cenário de Produção Real
Ambiente corporativo de alta criticidade e escala distribuída exigindo confiabilidade operacional contínua, governança de dados e auditoria em conformidade com padrões de SRE e Platform Engineering.

## 2. O Problema Real
Carga automatizada de dados em staging com execução de queries COPY INTO atômicas. A ausência desta automação resulta em gargalos operacionais manuais, risco de falhas humanas durante incidentes, indisponibilidade não planejada de serviços e violação de SLAs estabelecidos.

## 3. Arquitetura e Engenharia da Solução
Solução desenvolvida em Python modular com tipagem estática (type hints), validação estrita de contratos de dados, tratamento resiliente de exceções, isolamento em threads ou processos assíncronos e instrumentação com logs estruturados em JSON para integração direta com datalakes de observabilidade.

## 4. Ferramentas e Tecnologias
- **Runtime:** Python 3.10+
- **Bibliotecas / Ecossistema:** snowflake-connector-python, cryptography
- **Padrões:** Clean Architecture, 12-Factor App, Tratamento Robusto de Sinal (SIGTERM/SIGINT)

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com parâmetros de produção
python main.py --stage '@my_s3_stage' --target-table fact_sales
```
