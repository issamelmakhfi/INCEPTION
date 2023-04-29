FROM    debian:latest

RUN     apt-get update && apt-get upgrade -y && apt install -y wget  \
        && apt-get install -y php php-fpm php-mysql

WORKDIR /var/www/html

RUN     wget http://wordpress.org/latest.tar.gz && tar xfz latest.tar.gz && rm -rf latest.tar.gz

RUN     wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN     chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html/wordpress

COPY     ./wp-config.php wp-config.php


RUN     mv * ../

COPY    ./test.php test.php

# RUN     service php7.4-fpm start

RUN     mkdir /run/php

COPY    ./www.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY    ./wp_cmd.sh ../wp_cmd.sh

EXPOSE 9000

# RUN     service php7.4-fpm stop

RUN     chmod +x ../wp_cmd.sh

# RUN wp core install --allow-root --url=ielmakhf.42.fr --title=wordpress --admin_user=wordpress_admin --admin_password=120701A --admin_email=issam.test@gmail.com --path=/var/www/html --skip-email


ENTRYPOINT [ "../wp_cmd.sh"]


CMD [ "php-fpm7.4" , "-F"]

# ENTRYPOINT [ "php-fpm7.4" , "-F"]
# ENTRYPOINT   ["bash", "../wp_cmd.sh "]
