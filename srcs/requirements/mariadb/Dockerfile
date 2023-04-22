FROM debian:latest

RUN apt-get update && apt-get upgrade && apt-get -y install mariadb-server

COPY ./script.sh /home/script.sh

EXPOSE 3306

ENTRYPOINT [ "bash" , "/home/script.sh"]

CMD [ "mysqld" ]
