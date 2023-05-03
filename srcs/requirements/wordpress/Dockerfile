FROM    debian:bullseye

RUN     apt-get update && apt install -y wget  \
        && apt-get install -y php-fpm php-mysql

WORKDIR /var/www/html

COPY    ./wp_cmd.sh ./wp_cmd.sh

RUN     wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN     chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp


RUN     mkdir /run/php

COPY    ./www.conf /etc/php/7.4/fpm/pool.d/www.conf


EXPOSE 9000

RUN     chmod +x ./wp_cmd.sh


ENTRYPOINT [ "./wp_cmd.sh"]

CMD [ "php-fpm7.4" , "-F"]
