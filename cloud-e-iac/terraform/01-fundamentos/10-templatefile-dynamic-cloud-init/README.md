# Geração de Scripts de Inicialização de Nós Linux com templatefile e Jinja-like Logic

## 1. Cenário de Produção Real
Scripts de `user_data` de instâncias EC2 estavam cheios de concatenações de strings frágeis que quebravam quando variáveis continham aspas ou quebras de linha.

## 2. O Problema Real
Gerar scripts de bootstrap de nós consistentes, auditáveis e com variáveis fortemente tipadas renderizadas dinamicamente a partir de templates dedicados.

## 3. Arquitetura e Engenharia da Solução
Uso da função nativa `templatefile("userdata.sh.tftpl", { vault_addr = ..., cluster_name = ... })` com controle de loops e condicionais no arquivo.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform templatefile, Cloud-Init, Linux Bootstrap, Bash Templating
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=aws_instance.k8s_worker
```
