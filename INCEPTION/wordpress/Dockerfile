FROM    debian:stable

RUN     apt-get update && apt-get upgrade -y && apt install -y wget  \
        && apt-get install -y php php-fpm

WORKDIR /var/www/html

RUN     wget http://wordpress.org/latest.tar.gz && tar xfz latest.tar.gz && rm -rf latest.tar.gz