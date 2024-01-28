#!/bin/bash

DB_NAME="db_name"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
FILENAME="backup_${TIMESTAMP}.sql"

# Dump de base de datos
mysqldump --defaults-extra-file='mysql.conf' $DB_NAME > backups/"${FILENAME}"

echo "Backup completado correctamente en "


# Eliminar antiguos
find ./backups -name "backup_*" -type f -mtime +30 -delete;

echo "Archivos antiguos eliminados"