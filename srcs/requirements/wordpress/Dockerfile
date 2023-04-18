FROM debian:buster

RUN apt-get update && apt-get install -y php7.3 \
	php7.3-fpm php7.3-mysql mariadb-client \
	nginx wget curl
    
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/run.sh /run.sh

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN chmod +x run.sh

RUN mkdir /run/php/

WORKDIR /var/www/wordpress

RUN ls

EXPOSE 9001

#ENTRYPOINT ["sh", "/run.sh"]

CMD ["php", "-S", "127.0.0.1:9001"]

#CMD ["php-fpm7.3", "-R", "-F"]

