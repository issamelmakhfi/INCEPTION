#!/bin/bash

wp core download --allow-root 


cat wp-config-sample.php > wp-config.php && chmod +x wp-config.php


wp config set DB_NAME --allow-root $WORDPRESS_DB_NAME
wp config set DB_HOST --allow-root $WORDPRESS_DB_HOST
wp config set DB_USER --allow-root $WORDPRESS_DB_USER
wp config set DB_PASSWORD --allow-root $WORDPRESS_DB_PASSWORD 


wp config set WP_REDIS_HOST --allow-root my_redis
wp config set WP_REDIS_PORT --allow-root 6379
wp config set WP_CACHE_KEY_SALT --allow-root ielmakhf.42.fr

wp core install --allow-root --url=ielmakhf.42.fr --title=wordpress --admin_user=wordpress_admin --admin_password=120701A --admin_email=issam.test@gmail.com --path=/var/www/html --skip-email

wp theme install ./theme.zip --activate --allow-root

wp plugin install redis-cache --path=/var/www/html --activate --allow-root
wp redis enable --allow-root

exec "$@"