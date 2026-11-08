# Padronização Determinística de Recursos com Provider Random e Prefixo Corporativo

## 1. Cenário de Produção Real
Colisões de nomes em buckets S3 e registros DNS globais causavam falhas frequentes de pipeline durante deploys de novos ambientes de teste.

## 2. O Problema Real
Garantir unicidade absoluta de nomes globais mantendo rastreabilidade da squad, projeto e ambiente sem intervenção manual.

## 3. Arquitetura e Engenharia da Solução
Combinação de variáveis de escopo com `resource "random_id" "bucket_suffix"` gerando nomes determinísticos e exclusivos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Random Provider, S3 Global Uniqueness, Enterprise Naming Standards
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan | grep 'bucket = "ny-fintech-prod-'
```
