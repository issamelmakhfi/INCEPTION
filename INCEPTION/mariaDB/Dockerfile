FROM    debian:stable

RUN apt-get update && apt-get -y install mariadb-server

ENTRYPOINT ["service", "mariadb", "start"]
