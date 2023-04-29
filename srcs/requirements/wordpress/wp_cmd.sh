#!/bin/bash


wp core install --allow-root --url=ielmakhf.42.fr --title=wordpress --admin_user=wordpress_admin --admin_password=120701A --admin_email=issam.test@gmail.com --path=/var/www/html --skip-email


exec "$@"