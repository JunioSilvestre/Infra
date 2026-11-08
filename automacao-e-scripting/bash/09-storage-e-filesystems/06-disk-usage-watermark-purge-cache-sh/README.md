# 06 — Limpador de Emergência com Base em Marcas D'água (Watermarks) de Uso de Disco

## 🏢 Cenário de Negócios e Produção Real
Servidores com discos quase cheios (>90%) ameaçando parar o sistema operacional.

### ⚠️ O Problema Real
Aplicações param de funcionar e bancos de dados entram em modo somente-leitura ao faltar espaço.

## 🚀 Arquitetura e Engenharia em Bash
Verificação via df -h, detecção de espaço acima da marca d'água de perigo (90%), purga ordenada de arquivos seguros: caches de pacotes (apt clean), logs antigos de mais de 30 dias (/var/log/*.gz), temporários em /tmp e containers parados.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`df, find, rm, apt-get, docker`

## 📌 Exemplo de Execução CLI
```bash
./disk_emergency_purge.sh --watermark 90 --dry-run
```
