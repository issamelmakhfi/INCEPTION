#!/bin/bash

wp core download --allow-root 


cat wp-config-sample.php > wp-config.php && chmod +x wp-config.php

wp config set DB_NAME --allow-root $WORDPRESS_DB_NAME
wp config set DB_HOST --allow-root $WORDPRESS_DB_HOST
wp config set DB_USER --allow-root $WORDPRESS_DB_USER
wp config set DB_PASSWORD --allow-root $WORDPRESS_DB_PASSWORD
# wp core creat 
# sleep 3
# php-fpm7.4 -D
# wp core config --allow-root --dbname=wordpress_db --dbuser=wordpress_admin 

wp core install --allow-root --url=ielmakhf.42.fr --title=wordpress --admin_user=wordpress_admin --admin_password=120701A --admin_email=issam.test@gmail.com --path=/var/www/html --skip-email
# php test.php

# service php7.4-fpm stop
exec "$@"