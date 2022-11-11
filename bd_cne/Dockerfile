FROM mysql:latest

COPY bd_cne.sql  /docker-entrypoint-initdb.d/  

CMD mysql -uroot -p"$MYSQL_ROOT_PASSWORD" bd_cne < /docker-entrypoint-initdb.d/bd_cne.sql
 
#se copia los archivos a la ruta selccionada, y se ejecuta un comando para restaurar la BD