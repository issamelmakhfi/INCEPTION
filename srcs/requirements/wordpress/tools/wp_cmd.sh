#!/bin/bash

wp core download --allow-root

cat wp-config-sample.php > wp-config.php && chmod +x wp-config.php

sleep 5

wp config set DB_NAME --allow-root $WORDPRESS_DB_NAME
wp config set DB_HOST --allow-root $WORDPRESS_DB_HOST
wp config set DB_USER --allow-root $WORDPRESS_DB_USER
wp config set DB_PASSWORD --allow-root $WORDPRESS_DB_PASSWORD 


wp config set WP_REDIS_HOST --allow-root $REDIS_HOST
wp config set WP_REDIS_PORT --allow-root $REDIS_PORT
wp config set WP_CACHE_KEY_SALT --allow-root $DOMAINE_NAME

wp core install --allow-root --url=$DOMAINE_NAME --title=wordpress --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --path=/var/www/html --skip-email

wp user create $USER $EMAIL --role=$ROLE --user_pass=$USER_PASSWORD --allow-root

wp theme install ./theme.zip --activate --allow-root

wp plugin install $REDIS_PLUGIN --path=/var/www/html --activate --allow-root

wp redis enable --allow-root

# fi

exec "$@"