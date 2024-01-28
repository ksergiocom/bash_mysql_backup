#!/bin/bash

# Nombre del archivo
DB_NAME="khudos"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
FILENAME="backup_${TIMESTAMP}.sql"

# Ejecuta el comando mysqldump con la configuración proporcionada
mysqldump --defaults-extra-file='mysql.conf' $DB_NAME > backups/"${FILENAME}"

echo "Backup completado correctamente en db.sql"


# Elimina archivos con más de 30 días
find ./backups -name "backup_*" -type f -mtime +30 -delete;

echo "Archivos antiguos eliminados"