# Módulo: Fundamentos Avançados de HCL e Práticas de Engenharia Terraform

Estruturas de linguagem HCL2, ciclo de vida de recursos, manipulação avançada de tipos, grafos de dependência e controle determinístico.

Este módulo contém 20 projetos práticos de nível sênior baseados no dia a dia real de engenheiros de Infraestrutura em Nuvem, SRE e Platform Engineering operando em empresas de grande porte nos estados de Nova York (NY), Massachusetts (MA) e Connecticut (CT).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-hcl2-dynamic-blocks-security-groups` | Construção de Security Groups Dinâmicos com HCL2 Dynamic Blocks em NYC | [Visualizar](./01-hcl2-dynamic-blocks-security-groups/README.md) |
| `02-lifecycle-rules-zero-downtime-swap` | Substituição Atômica de Recursos sem Queda de Tráfego com create_before_destroy | [Visualizar](./02-lifecycle-rules-zero-downtime-swap/README.md) |
| `03-prevent-destroy-production-guardrails` | Blindagem Contra Destruição Acidental de Bancos de Dados com prevent_destroy | [Visualizar](./03-prevent-destroy-production-guardrails/README.md) |
| `04-ignore-changes-drift-management` | Gerenciamento de Autoscaling Externo e Ajustes de Pods com ignore_changes | [Visualizar](./04-ignore-changes-drift-management/README.md) |
| `05-complex-type-constraints-validation` | Validação Estrita de Contratos de Variáveis com Custom Validation Rules | [Visualizar](./05-complex-type-constraints-validation/README.md) |
| `06-terraform-graph-dependency-debugging` | Otimização de Grafo de Dependências e Eliminação de Deadlocks de Ciclo com Graphviz | [Visualizar](./06-terraform-graph-dependency-debugging/README.md) |
| `07-for-each-vs-count-state-safety` | Refatoração de Infraestrutura com for_each para Eliminação de Destruições em Cascata | [Visualizar](./07-for-each-vs-count-state-safety/README.md) |
| `08-terraform-console-expression-triage` | Depuração Interativa de Expressões Complexas de HCL com Terraform Console | [Visualizar](./08-terraform-console-expression-triage/README.md) |
| `09-splat-operator-projection-flattening` | Projeção e Agregação de Atributos de Recursos com Splat Expressions e Flatten | [Visualizar](./09-splat-operator-projection-flattening/README.md) |
| `10-templatefile-dynamic-cloud-init` | Geração de Scripts de Inicialização de Nós Linux com templatefile e Jinja-like Logic | [Visualizar](./10-templatefile-dynamic-cloud-init/README.md) |
| `11-moved-blocks-zero-downtime-refactor` | Refatoração Segura de Nomes e Módulos sem Recriação via Moved Blocks | [Visualizar](./11-moved-blocks-zero-downtime-refactor/README.md) |
| `12-local-values-dry-architecture` | Eliminação de Duplicação de Configuração com Locals e Mapeamentos Corporativos | [Visualizar](./12-local-values-dry-architecture/README.md) |
| `13-sensitive-data-redaction-outputs` | Proteção e Mascaramento de Dados Sensíveis com Flag sensitive em Outputs | [Visualizar](./13-sensitive-data-redaction-outputs/README.md) |
| `14-null-resource-local-exec-escape-hatch` | Automação de Tarefas Operacionais com null_resource, triggers e local-exec | [Visualizar](./14-null-resource-local-exec-escape-hatch/README.md) |
| `15-check-blocks-continuous-validation` | Validação Contínua de Saúde Pós-Provisionamento com Check Blocks (Terraform 1.5+) | [Visualizar](./15-check-blocks-continuous-validation/README.md) |
| `16-provider-alias-multi-region-routing` | Provisionamento Multi-Região Concorrente com Provider Aliasing (us-east-1 e us-east-2) | [Visualizar](./16-provider-alias-multi-region-routing/README.md) |
| `17-dynamic-json-rendering-jsonencode` | Geração Segura de Políticas IAM e Configurações Complexas com jsonencode | [Visualizar](./17-dynamic-json-rendering-jsonencode/README.md) |
| `18-terraform-data-resource-migration` | Substituição do null_resource pelo Recurso Nativo terraform_data | [Visualizar](./18-terraform-data-resource-migration/README.md) |
| `19-custom-pre-post-conditions-guardrails` | Garantia de Qualidade em Tempo de Execução com Preconditions e Postconditions | [Visualizar](./19-custom-pre-post-conditions-guardrails/README.md) |
| `20-deterministic-naming-convention-pet` | Padronização Determinística de Recursos com Provider Random e Prefixo Corporativo | [Visualizar](./20-deterministic-naming-convention-pet/README.md) |
