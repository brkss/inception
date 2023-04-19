FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt install -y nginx

COPY ./conf/default.conf /etc/nginx/conf.d/

COPY ./conf/server.key /etc/ssl/

COPY ./conf/certificat.crt /etc/ssl/

EXPOSE 443 

CMD ["nginx", "-g", "daemon off;"]
