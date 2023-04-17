FROM debian:stable-slim

RUN apt-get update && apt-get upgrade && apt-get -y install mariadb-server

COPY ./script.sh /home/script.sh

ENTRYPOINT [ "bash" , "/home/script.sh"]

CMD [ "mysqld_safe" ]
