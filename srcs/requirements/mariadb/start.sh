#!/bin/bash

set -e 

#start mariadb demon 
#/usr/bin/mysqld_safe --datadir='/var/lib/mysql' &

/usr/bin/mysqld_safe &

# wait for server 
sleep 15

#create db 
/usr/bin/mysql -u root -e "CREATE DATABASE wp;"

cat /var/lib/mysql/*
