#!bin/bash

DB_NAME="wordpress_db"
DB_USER="wordpress_admin"
DB_PASSWORD="testrrr"


service mariadb start

mariadb -e "CREATE DATABASE $DB_NAME;"
mariadb -e "CREATE USER $DB_USER@localhost IDENTIFIED BY '$DB_PASSWORD';"
mariadb -e "GRANT ALL PRIVILEGES ON wordpress_db.* TO '$DB_USER'@'localhost';"