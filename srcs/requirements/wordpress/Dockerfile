FROM alpine:3.15

#WORKDIR /app 

RUN apk add --no-cache php7 php7-fpm php7-opcache wget unzip php-mysqli mariadb-client curl php7-json

RUN wget https://wordpress.org/latest.zip 

RUN unzip latest.zip -d /var/www/

COPY ./conf/www.conf /etc/php/7/fpm/pool.d

COPY ./conf /var/www/wordpress

EXPOSE 4099

WORKDIR /var/www/wordpress

CMD ["php-fpm7", "-R", "-F"]
