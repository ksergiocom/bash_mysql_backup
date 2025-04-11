# Backup MySQL remoto

Un script de bash para hacer backups a un *servidor remoto*.

*¡Importante!* Hay que modificar la variable **DB_NAME="YOUR_DBNAME"** con el nombre de la base de datos que se quiera guardar.

También borra los backups *anteriores a 30 días*.
Hecho para trabajar con *cron*, los backups se guardan en un directorio backups que se genera automaticamente si no existe.

Genera el directorio de *backups* dentro del mismo directorio que contiene el script *start.sh*

----------------- 

# Agregado Script para sincronizar DB remota con local

Necesito tener un archivo de configuracion mysql.conf y otro mysql-local.conf con las credenciales para dar acceso a mysqldump.
Simplemente exporto con el dump un fichero externo y lo importo en el local, por ultimo borro el archivo temporal.

Está pendiente de hacerse bien... ¡Pero son pequeñas chorradas que me son útiles!
