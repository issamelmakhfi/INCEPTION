FROM    debian:latest

RUN     apt-get update && apt-get upgrade -y && apt install -y wget  \
        && apt-get install -y php php-fpm php-mysql

WORKDIR /var/www/html

RUN     wget http://wordpress.org/latest.tar.gz && tar xfz latest.tar.gz && rm -rf latest.tar.gz

WORKDIR /var/www/html/wordpress

RUN     mv * ../


# RUN     mkdir /run/php && chown www-data:www-data /run/php

RUN     service php7.4-fpm start

COPY    ./www.conf /etc/php/7.4/fpm/pool.d/www.conf

EXPOSE 9000

# ENTRYPOINT ["service", "php7.4-fpm", "start"]

ENTRYPOINT [ "php-fpm7.4" , "-F" ]
