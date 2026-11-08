# Geração de Atestados de Procedência de Software (SLSA Nível 3) para Containers

## 1. Cenário de Produção Real
Fintechs sob auditoria do Fed necessitam comprovar de ponta a ponta que o código fonte que originou a imagem não foi adulterado no pipeline.

## 2. O Problema Real
Gerar atestados criptográficos invioláveis contendo o commit Git, o digest do builder e o ambiente de compilação utilizado.

## 3. Arquitetura e Engenharia da Solução
Uso do SLSA-Verifier e Cosign gerando e validando In-Toto Attestations anexadas diretamente ao registro OCI da imagem.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** SLSA Framework, In-Toto Attestations, Cosign Attest, Supply Chain Security
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
cosign attest --predicate provenance.json --type slsaprovenance registry.corp/app:v1
```
