#!/usr/bin/env bash
# ==============================================================================
# Script de Instalação e Configuração Automatizada do PostgreSQL no Ubuntu 24.04
# Suporte a:
#  - Desenvolvimento local (ASP.NET Core, C#, Python)
#  - Integração com MCP Server (usuario:senha @ estoque_vendas)
#  - Acesso remoto seguro via Tailscale (Windows, Mac e Linux na rede 100.64.0.0/10)
# ==============================================================================

set -euo pipefail

if [ "$EUID" -ne 0 ]; then
    echo "[-] Erro: Este script precisa ser executado com permissões de root/sudo."
    echo "    Uso: sudo bash $0"
    exit 1
fi

echo "[1/6] Atualizando repositórios e instalando PostgreSQL..."
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y \
    postgresql \
    postgresql-contrib \
    postgresql-client \
    libpq-dev

echo "[2/6] Identificando versão e caminhos de configuração..."
PG_VERSION=$(ls /etc/postgresql/ 2>/dev/null | sort -V | tail -n 1)
if [ -z "$PG_VERSION" ]; then
    echo "[-] Erro: Diretório /etc/postgresql não encontrado após a instalação."
    exit 1
fi

PG_CONF="/etc/postgresql/${PG_VERSION}/main/postgresql.conf"
PG_HBA="/etc/postgresql/${PG_VERSION}/main/pg_hba.conf"

echo "    Versão detectada: PostgreSQL ${PG_VERSION}"
echo "    postgresql.conf: ${PG_CONF}"
echo "    pg_hba.conf:     ${PG_HBA}"

echo "[3/6] Configurando escuta de rede para desenvolvimento e Tailscale..."
# Backup das configurações originais
[ -f "${PG_CONF}.bak" ] || cp "${PG_CONF}" "${PG_CONF}.bak"
[ -f "${PG_HBA}.bak" ] || cp "${PG_HBA}" "${PG_HBA}.bak"

# Permitir que o PostgreSQL escute em todas as interfaces (necessário para Tailscale)
sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/g" "${PG_CONF}"
sed -i "s/listen_addresses = 'localhost'/listen_addresses = '*'/g" "${PG_CONF}"

# Adicionar permissão de acesso para a rede Tailscale (CGNAT 100.64.0.0/10)
if ! grep -q "Tailscale network" "${PG_HBA}"; then
    cat <<EOF >> "${PG_HBA}"

# ==============================================================================
# Acesso de Desenvolvimento Remoto via Tailscale
# ==============================================================================
# Permite conexão de clientes Windows, Mac e Linux na rede Tailscale
host    all             all             100.64.0.0/10           scram-sha-256
# Permite conexão local via IPv4 e IPv6 com senha
host    all             all             127.0.0.1/32            scram-sha-256
host    all             all             ::1/128                 scram-sha-256
EOF
fi

echo "[4/6] Reiniciando serviço PostgreSQL..."
systemctl enable postgresql
systemctl restart postgresql

echo "[5/6] Criando usuário e banco de dados para desenvolvimento e MCP..."
# Criar usuário 'usuario' se não existir
sudo -u postgres psql -tc "SELECT 1 FROM pg_roles WHERE rolname = 'usuario'" | grep -q 1 || \
sudo -u postgres psql -c "CREATE USER usuario WITH PASSWORD 'senha' SUPERUSER CREATEDB REPLICATION;"

# Atualizar senha garantindo formato SCRAM-SHA-256
sudo -u postgres psql -c "ALTER USER usuario WITH PASSWORD 'senha';"

# Criar banco 'estoque_vendas' se não existir
sudo -u postgres psql -tc "SELECT 1 FROM pg_database WHERE datname = 'estoque_vendas'" | grep -q 1 || \
sudo -u postgres psql -c "CREATE DATABASE estoque_vendas OWNER usuario;"

sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE estoque_vendas TO usuario;"

echo "[6/6] Verificando status e conectividade..."
pg_isready -h localhost -p 5432

echo ""
echo "=============================================================================="
echo "[+] PostgreSQL ${PG_VERSION} configurado com SUCESSO!"
echo "=============================================================================="
echo "Dados de conexão local:"
echo "  Host:      localhost (ou 127.0.0.1)"
echo "  Porta:     5432"
echo "  Usuário:   usuario"
echo "  Senha:     senha"
echo "  Database:  estoque_vendas"
echo "  URL:       postgresql://usuario:senha@localhost:5432/estoque_vendas"
echo ""
echo "Dados de conexão remota (via Tailscale):"
echo "  Host:      100.93.195.84 (ou srv.tail1e7db8.ts.net)"
echo "  Porta:     5432"
echo "  URL:       postgresql://usuario:senha@100.93.195.84:5432/estoque_vendas"
echo "=============================================================================="
