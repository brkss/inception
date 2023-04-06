FROM debian:buster

RUN apt update; \
    apt install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./conf/db.sql /

RUN service mysql start && mysql < db.sql && rm -f db.sql

EXPOSE 3306

CMD /usr/bin/mysqld_safe
