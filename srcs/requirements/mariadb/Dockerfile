FROM debian:buster

RUN apt-get update && apt-get -y install mariadb-server

COPY ./tools/script.sh /home/script.sh

EXPOSE 3306

ENTRYPOINT [ "bash" , "/home/script.sh"]

CMD [ "mysqld" ]
