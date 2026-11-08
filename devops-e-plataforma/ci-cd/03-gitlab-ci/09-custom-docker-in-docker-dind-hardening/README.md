# 09 — Hardening e Otimização de Docker-in-Docker (DinD) em Pipelines do GitLab

## 🏢 Cenário de Produção e Vida Real
Execução de comandos 'docker build' e 'docker run' dentro de jobs de containers.

### ⚠️ O Problema Real
O uso de contêineres privilegiados (--privileged) no DinD cria brechas severas de fuga de container para o host.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração de TLS obrigatório (DOCKER_TLS_CERTDIR: "/certs"), uso de armazenamento em tmpfs para velocidade de I/O e restrição de permissões via AppArmor e seccomp.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`docker:dind, openssl, gitlab-ci`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# services: - docker:27-dind com variáveis de certificados TLS estritos
```
