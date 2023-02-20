FROM alpine:3.15

WORKDIR /app

COPY index.php .

RUN apk add --no-cache php7 php7-fpm php7-opcache wget unzip

RUN wget https://wordpress.org/latest.zip 

RUN unzip latest.zip 

WORKDIR /app/wordpress

CMD ["php", "-S", "0.0.0.0:4002"]
