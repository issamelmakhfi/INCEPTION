FROM debian:stable

RUN apt-get update && apt-get upgrade && apt-get -y install mariadb-server

COPY ./script.sh /home/script.sh

RUN bash /home/script.sh

ENTRYPOINT [ "mysqld" ]
# ENTRYPOINT ["service", "mariadb", "start"]
