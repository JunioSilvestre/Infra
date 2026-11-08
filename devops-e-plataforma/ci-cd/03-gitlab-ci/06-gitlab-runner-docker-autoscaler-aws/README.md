# 06 — Auto-Scaler de GitLab Runners em AWS EC2 com Docker Machine / Fleeting

## 🏢 Cenário de Produção e Vida Real
Gestão de infraestrutura de runners para centenas de desenvolvedores com picos de uso durante o dia.

### ⚠️ O Problema Real
Filas gigantes de espera para rodar jobs de CI e desperdício de dinheiro com servidores ociosos de madrugada.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração do GitLab Runner com executor Fleeting/Docker AutoScale na AWS, subindo instâncias spot sob demanda e encerrando após 10 minutos de inatividade.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`gitlab-runner, aws-ec2, docker`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
gitlab-runner run --config /etc/gitlab-runner/config.toml
```
