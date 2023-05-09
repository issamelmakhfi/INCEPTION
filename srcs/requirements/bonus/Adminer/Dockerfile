FROM debian:bullseye

RUN apt update && apt install -y php-fpm php-mysql && apt install -y nginx && apt install -y wget

RUN mkdir /run/php

RUN mkdir /var/www/adminer

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-en.php -O /var/www/adminer/adminer.php

ENTRYPOINT [ "php-fpm7.4", "-F" ]