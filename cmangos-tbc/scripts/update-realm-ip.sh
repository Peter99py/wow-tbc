#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
COMPOSE_DIR="$(cd "$SCRIPT_DIR/../bots" && pwd)"

echo "📡 Detectando IP da máquina..."
CURRENT_IP=$(hostname -I | awk '{print $1}')

if [ -z "$CURRENT_IP" ]; then
    echo "❌ Não foi possível detectar o IP da máquina"
    exit 1
fi

echo "   IP detectado: $CURRENT_IP"

# Extrai apenas a senha root do banco do .env
# (não damos source no arquivo inteiro porque ele tem valores com espaços
#  que o bash interpretaria como comandos separados)
MARIADB_ROOT_PASSWORD=$(grep '^MARIADB_ROOT_PASSWORD=' "$COMPOSE_DIR/.env" | cut -d'=' -f2-)

# Garante que o container do database está rodando (mas não o mangosd nem realmd)
echo "📦 Iniciando banco de dados..."
docker compose -f "$COMPOSE_DIR/compose.yaml" up -d database

# Aguarda o database ficar pronto
echo "⏳ Aguardando banco de dados ficar pronto..."
docker compose -f "$COMPOSE_DIR/compose.yaml" run --rm wait-for-db

# Atualiza o IP do realm no banco
echo "🔄 Atualizando IP do realm para $CURRENT_IP ..."
docker compose -f "$COMPOSE_DIR/compose.yaml" exec -T database \
    mariadb -u root -p"$MARIADB_ROOT_PASSWORD" tbcrealmd \
    -e "UPDATE realmlist SET address = '${CURRENT_IP}' WHERE id = 1;"

echo "✅ Realm IP atualizado para $CURRENT_IP"
