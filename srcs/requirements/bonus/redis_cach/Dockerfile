FROM debian:bullseye

RUN apt update && apt install -y redis-server

RUN service redis-server start

COPY ./wp_script.sh /wp_script.sh

RUN bash wp_script.sh

EXPOSE 6379

ENTRYPOINT [ "redis-server", "--protected-mode" ,"no" ]