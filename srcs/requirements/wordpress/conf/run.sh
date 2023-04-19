#!/bin/bash


chown -R www-data:www-data /var/www/wordpress

mkdir -p /run/php

touch /run/php/php7.3-fpm.sock

chown -R www-data:www-data /run/php/

chmod 660 /run/php/php7.3-fpm.sock



cd /var/www/wordpress

wp core download --allow-root



wp core config --dbname=${MSQL_DB} --dbuser=${MSQL_USER} --dbpass=${MSQL_PASS} --dbhost=mariadb --allow-root

wp core install --url=${DOMAIN} --title=inception --admin_user=${ADMIN_U} --admin_password=${ADMIN_P} --admin_email=${ADMIN_E} --allow-root

wp user create ${USER_U} user@mail.com --user_pass=${USER_P} --role=author --allow-root


cd /var/www/wordpress


exec $@
