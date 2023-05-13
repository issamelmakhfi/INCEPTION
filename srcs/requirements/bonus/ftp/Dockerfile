FROM debian:buster

RUN apt update && apt install -y vsftpd

COPY ./script.sh script.sh

RUN bash script.sh

RUN service vsftpd start

ENTRYPOINT [ "usr/sbin/vsftpd" ]