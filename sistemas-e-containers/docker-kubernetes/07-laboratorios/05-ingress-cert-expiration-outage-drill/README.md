# Simulação de Expiração de Certificados TLS de Ingress e Renovação de Emergência

## 1. Cenário de Produção Real
Treinamento de equipe para lidar com incidentes de certificados expirados em produção gerando avisos de segurança no navegador de clientes.

## 2. O Problema Real
Simular a expiração forçada de um certificado x509 e executar o procedimento de emergência de emissão e swap a quente.

## 3. Arquitetura e Engenharia da Solução
Geração de certificados OpenSSL com validade expirada propositalmente, teste de falha com cURL e emissão manual rápida via Cert-Manager.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** OpenSSL, cert-manager, Nginx Ingress, Incident Response Drills
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
curl -vI https://service.lab.internal 2>&1 | grep 'certificate has expired'
```
