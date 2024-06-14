# Backup MySQL remoto

Un script de bash para hacer backups a un *servidor remoto*.

*¡Importante!* Hay que modificar la variable **DB_NAME="YOUR_DBNAME"** con el nombre de la base de datos que se quiera guardar.

También borra los backups *anteriores a 30 días*.
Hecho para trabajar con *cron*, los backups se guardan en un directorio backups que se genera automaticamente si no existe.

Genera el directorio de *backups* dentro del mismo directorio que contiene el script *start.sh*
