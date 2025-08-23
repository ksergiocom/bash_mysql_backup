#!/bin/bash

# Path de trabajo (el directorio donde está este script)
CURRENT_DIR_PATH=$(dirname "$0")

# Credenciales (archivos .conf dentro del mismo directorio)
REMOTE_CONF="$CURRENT_DIR_PATH/mysql.conf"
LOCAL_CONF="$CURRENT_DIR_PATH/mysql-local.conf"

# Nombres de las bases de datos
REMOTE_DB="db_origen_volcado"
LOCAL_DB="db_destino_volcado"

# Archivo temporal para el dump (con timestamp)
DUMP_FILE="$CURRENT_DIR_PATH/dump_$(date +%Y%m%d_%H%M%S).sql"

echo "Realizando dump de la base de datos remota..."
mysqldump --defaults-extra-file="$REMOTE_CONF" "$REMOTE_DB" > "$DUMP_FILE"

echo "Importando dump a la base de datos local..."
mysql --defaults-extra-file="$LOCAL_CONF" "$LOCAL_DB" < "$DUMP_FILE"

# Borra el archivo dump temporal
rm "$DUMP_FILE"

echo "Base de datos sincronizada con éxito!"
