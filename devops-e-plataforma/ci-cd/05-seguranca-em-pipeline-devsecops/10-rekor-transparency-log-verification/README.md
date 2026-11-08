# 10 — Verificação de Inclusão no Log de Transparência Criptográfico Rekor (Sigstore)

## 🏢 Cenário de Produção e Vida Real
Auditoria forense comprovando que um artefato de software foi gerado exatamente no horário declarado sem falsificação.

### ⚠️ O Problema Real
Possibilidade de atacantes gerarem assinaturas retroativas forjadas com chaves comprometidas.

## 🚀 Arquitetura e Engenharia de CI/CD
Consulta da entrada de transparência imutável no Rekor via UUID ou hash SHA-256 do artefato, verificando a prova criptográfica de inclusão (Merkle Tree proof).

## 🛠️ Ferramentas e Tecnologias Utilizadas
`rekor-cli, jq, curl`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
rekor-cli verify --uuid $ENTRY_UUID
```
