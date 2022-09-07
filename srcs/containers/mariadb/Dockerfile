FROM alpine:3.15

RUN apk update
RUN apk upgrade

RUN apk add mariadb mariadb-common mariadb-client mariadb-server-utils

RUN rm -f /etc/my.cnf.d/mariadb-server.cnf
RUN rm -f /etc/my.cnf.d/my.cnf
COPY conf/my.cnf /etc/my.cnf.d/mly.cnf
COPY conf/my.cnf /etc/mysql/my.cnf

RUN mkdir -p /run/mysqld /var/lib/mysql
RUN chown -R mysql /var/lib/mysql
COPY tools/launch.sh launch.sh

CMD ["sh", "launch.sh"]

EXPOSE 3306