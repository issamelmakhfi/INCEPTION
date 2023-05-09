FROM debian:bullseye

RUN apt update && apt install -y vsftpd

RUN service vsftpd start

ENTRYPOINT [ "usr/sbin/vsftpd" ]