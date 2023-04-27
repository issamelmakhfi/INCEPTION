FROM    debian:latest

RUN     apt-get update && apt-get upgrade -y && apt install -y wget  \
        && apt-get install -y php php-fpm php-mysql

WORKDIR /var/www/html

RUN     wget http://wordpress.org/latest.tar.gz && tar xfz latest.tar.gz && rm -rf latest.tar.gz

RUN     wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN     chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html/wordpress

COPY     ./wp-config.php wp-config.php

# RUN     rm -rf wp-config-sample.php

RUN     mv * ../

COPY    ./test.php test.php

# RUN wp config create --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD --dbhost=$WORDPRESS_DB_HOST --allow-root
#J^jZK6$9e#?JRZK

# RUN     wp core install --allow-root --url=localhost --title=wordpress --admin_user=wordpress_admin --admin_password=120701A --admin_email=issam.test@gmail.com




# RUN     mkdir /run/php && chown www-data:www-data /run/php

RUN     service php7.4-fpm start

COPY    ./www.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY    ./wp_cmd.sh ../wp_cmd.sh

EXPOSE 9000

# ENTRYPOINT ["service", "php7.4-fpm", "start"]

ENTRYPOINT [ "php-fpm7.4" , "-F" ]

# CMD [ "bash", "./wp_cmd.sh"]
