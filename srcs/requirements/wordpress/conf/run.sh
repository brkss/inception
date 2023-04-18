#!/bin/bash

chown -R www-data:www-data /var/www/wordpress

mkdir -p /run/php
touch /run/php/php7.3-fpm.sock
chown -R www-data:www-data /run/php/
chmod 660 /run/php/php7.3-fpm.sock

cd /var/www/wordpress
wp core download --allow-root


wp core config --dbname=${MSQL_DB} --dbuser=${MSQL_USER} --dbpass=${MSQL_PASS} --dbhost=mariadb --allow-root

#wp core install --url=${DOMAIN_NAME} --title=DopamInception --admin_user=${WP_ADMIN} --admin_password=${WP_ADMIN_PW} --admin_email=${WP_EMAIL} --allow-root

#wp user create ${WP_USER} random@gmail.com --user_pass=${WP_PW} --role=author --allow-root

#wp search-replace 'localhost' 'mbaioumy@42.fr' --allow-root
#wp search-replace 'https://localhost' 'https://mbaioumy@42.fr' --allow-root

cd /var/www/wordpress

#echo "executing ls.."

#exec ls

exec $@
