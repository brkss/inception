FROM debian:buster

RUN apt update; \
    apt install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./conf/run.sh /run.sh

#RUN service mysql start && mysql < db.sql && rm -f db.sql

EXPOSE 3306

ENTRYPOINT  ["/run.sh"]

CMD ["/usr/bin/mysqld_safe"]
