FROM debian:buster

RUN apt-get update && apt-get -y install mariadb-server

COPY ./tools/script.sh /home/script.sh

COPY    ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

ENTRYPOINT [ "bash" , "/home/script.sh"]

CMD [ "mysqld" ]
