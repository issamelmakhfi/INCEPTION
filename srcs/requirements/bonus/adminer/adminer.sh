#!/bin/bash

rm -rf /var/www/html/index.nginx-debian.html

service php7.4-fpm start

# php-fpm7.4 -D

exec "$@"