FROM debian:latest

RUN apt-get update && apt-get upgrade -y && apt-get -y install mariadb-server

COPY ./script.sh /home/script.sh

COPY    ./mysql_conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

ENTRYPOINT [ "bash" , "/home/script.sh"]

CMD [ "mysqld" ]
