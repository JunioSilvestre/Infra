# Sincronização de Imagens para Ambientes Isolados (Air-Gapped) com Skopeo

## 1. Cenário de Produção Real
Bancos de dados e infraestruturas do setor militar e financeiro em Connecticut rodam em redes 100% desconectadas da internet.

## 2. O Problema Real
Mover centenas de imagens de containers de forma íntegra e validada entre redes sem acesso direto à internet.

## 3. Arquitetura e Engenharia da Solução
Uso de scripts com `skopeo copy` convertendo imagens OCI para diretórios e arquivos tar compactados, transportados sob custódia criptográfica.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Skopeo, OCI Directory Format, Air-Gapped Environments, Cryptographic Verification
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
skopeo copy docker://registry.public/app:v1 dir:/secure-media/app-v1 && skopeo copy dir:/secure-media/app-v1 docker://registry.airgap/app:v1
```
