FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt install -y nginx

COPY ./conf/default.conf /etc/nginx/conf.d/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
