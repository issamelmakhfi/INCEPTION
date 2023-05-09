FROM debian:latest

RUN apt update && apt install -y nginx

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]