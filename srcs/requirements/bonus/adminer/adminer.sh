#!/bin/bash

rm -rf /var/www/html/index.nginx-debian.html

service php7.3-fpm start

# php-fpm7.3 -D

exec "$@"