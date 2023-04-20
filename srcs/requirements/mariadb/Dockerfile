FROM debian:buster

RUN apt update; \
    apt install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./conf/db.sql db.sql

#RUN service mysql start

RUN service mysql start && mysql < db.sql && rm -f db.sql

#RUN mkdir /var/run/mysqld ; chmod 777 /var/run/mysqld


EXPOSE 3306

#ENTRYPOINT  ["/run.sh"]

CMD ["/usr/bin/mysqld_safe"]
