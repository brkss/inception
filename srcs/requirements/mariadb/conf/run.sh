#!/bin/bash

cat << eof > db.sql
CREATE USER '$MSQL_USER'@'%' IDENTIFIED BY '$MSQL_PASS';
GRANT ALL PRIVILEGES ON wp.* TO '$MSQL_USER'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';
CREATE DATABASE wp;
eof

mysql < db.sql

exec $@
