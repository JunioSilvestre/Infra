#!/usr/bin/env python3
"""
Script de teste de conexão com o PostgreSQL para validar o ambiente de desenvolvimento.
Funciona via socket local ou TCP.
"""
import socket
import sys

def check_tcp_port(host="127.0.0.1", port=5432, timeout=2):
    try:
        with socket.create_connection((host, port), timeout=timeout):
            print(f"[+] Porta {port} em {host} está ABERTA e aceitando conexões.")
            return True
    except (socket.timeout, ConnectionRefusedError, OSError) as e:
        print(f"[-] Não foi possível conectar a {host}:{port} -> {e}")
        return False

if __name__ == "__main__":
    host = sys.argv[1] if len(sys.argv) > 1 else "127.0.0.1"
    port = int(sys.argv[2]) if len(sys.argv) > 2 else 5432
    print(f"Testando conectividade com PostgreSQL ({host}:{port})...")
    ok = check_tcp_port(host, port)
    if ok:
        print("\nO serviço PostgreSQL está respondendo!")
        print("Para testar via psql:")
        print(f"  psql -h {host} -U usuario -d estoque_vendas")
    else:
        print("\nO PostgreSQL ainda não está ativo ou a porta está inacessível.")
        print("Execute: sudo /home/Projetos/scripts/setup_postgresql.sh")
    sys.exit(0 if ok else 1)
