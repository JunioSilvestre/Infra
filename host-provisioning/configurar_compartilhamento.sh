#!/usr/bin/env bash
# ==============================================================================
# Script de Configuração de Compartilhamento da pasta /home/Projetos
# Permissão Total (Leitura e Escrita) + Acesso via Tailscale (Windows, Mac, Linux)
# ==============================================================================

set -euo pipefail

if [ "$EUID" -ne 0 ]; then
    echo "[-] Erro: Este script precisa ser executado com permissões de root/sudo."
    echo "    Uso: sudo bash $0"
    exit 1
fi

echo "[1/4] Ajustando permissões do sistema de arquivos em /home/Projetos..."
chown -R srv:srv /home/Projetos
chmod 777 /home/Projetos
chmod -R 777 /home/Projetos/* 2>/dev/null || true

echo "[2/4] Atualizando configuração do Samba (/etc/samba/smb.conf)..."
SMB_CONF="/etc/samba/smb.conf"

[ -f "${SMB_CONF}.bak" ] || cp "${SMB_CONF}" "${SMB_CONF}.bak"

# Remove seção [Projetos] antiga se existir
sed -i '/^\[Projetos\]/,/^$/d' "${SMB_CONF}"

# Adiciona a nova seção [Projetos] com permissão total e acesso público/autenticado
cat <<'EOF' >> "${SMB_CONF}"

[Projetos]
    comment = Pasta de Desenvolvimento Projetos
    path = /home/Projetos
    browseable = yes
    read only = no
    writable = yes
    guest ok = yes
    public = yes
    force user = srv
    force group = srv
    create mask = 0777
    directory mask = 0777

EOF

echo "[3/4] Validando sintaxe da configuração do Samba..."
testparm -s "${SMB_CONF}" > /dev/null

echo "[4/4] Reiniciando serviço Samba..."
systemctl restart smbd nmbd

# Obter IP do Tailscale
TAILSCALE_IP=$(tailscale ip -4 2>/dev/null || echo "100.93.195.84")

echo ""
echo "=============================================================================="
echo "[+] Compartilhamento de /home/Projetos configurado com SUCESSO!"
echo "=============================================================================="
echo ""
echo "  Endereço Tailscale IP:  ${TAILSCALE_IP}"
echo "  Endereço MagicDNS:      srv (ou srv.tail1e7db8.ts.net)"
echo ""
echo "Como acessar em cada sistema:"
echo ""
echo "1. No WINDOWS (via Explorador de Arquivos):"
echo "   - Pressione Win + R e digite:"
echo "     \\\\${TAILSCALE_IP}\\Projetos"
echo "     (ou \\\\srv\\Projetos)"
echo "   - Para mapear como Unidade de Rede (ex: Z:):"
echo "     net use Z: \\\\${TAILSCALE_IP}\\Projetos /persistent:yes"
echo ""
echo "2. No macOS (via Finder):"
echo "   - No Finder, pressione Command + K (ou Menu -> Ir -> Conectar ao Servidor)"
echo "   - Digite:"
echo "     smb://${TAILSCALE_IP}/Projetos"
echo "   - Conecte como Convidado (Guest) ou com usuário 'srv'"
echo ""
echo "3. No LINUX (via Gerenciador de Arquivos / Terminal):"
echo "   - No Nautilus/Dolphin: smb://${TAILSCALE_IP}/Projetos"
echo "   - Ou montar via CIFS:"
echo "     sudo mount -t cifs //${TAILSCALE_IP}/Projetos /mnt -o user=srv,guest,rw,uid=1000,gid=1000"
echo "=============================================================================="
