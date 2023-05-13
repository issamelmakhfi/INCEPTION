FROM    debian:buster

RUN     apt-get update && apt install -y wget  \
        && apt-get install -y php-fpm php-mysql

WORKDIR /var/www/html

COPY    ./tools/wp_cmd.sh ./wp_cmd.sh

RUN     wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN     chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

RUN     mkdir /run/php

COPY    ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

COPY    ./tools/theme.zip theme.zip

EXPOSE 9000

ENTRYPOINT [ "bash" , "wp_cmd.sh"]

CMD [ "php-fpm7.3" , "-F"]
