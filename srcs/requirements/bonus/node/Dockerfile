FROM debian:bullseye

RUN apt update && apt install nodejs npm -y

COPY ./server.js server.js

ENTRYPOINT [ "node", "server.js" ]