# 04-infrastructure-as-code — Infraestrutura como Código na Plataforma

Criação de módulos de Terraform reutilizáveis e playbooks Ansible orquestrados pela plataforma.

## 📂 Subáreas
- [`terraform/`](./terraform) — **Stack:** `Módulos de infraestrutura padronizados e seguros` — Blocos de infraestrutura (bancos, filas, buckets) pré-aprovados pela equipe de SRE/Segurança.
- [`ansible/`](./ansible) — **Stack:** `Playbooks de configuração de nós e automação de SO` — Padronização e manutenção do parque de servidores Linux da plataforma.
- [`modulos/`](./modulos) — **Stack:** `Versionamento SemVer, catálogo de módulos IaC` — Publicação de módulos testados que impedem desvios de arquitetura.

## 📌 Guia de Execução & Padrões
- Todas as implementações desta pasta seguem os padrões de produção estabelecidos para Platform-Engineering.
- Consulte os READMEs de cada subárea para detalhes sobre ferramentas e boas práticas.
