#!bin/bash

DB_NAME=wordpress_db1
DB_USER=wordpress_admin
DB_PASSWORD=120701A

# Starting mariadb service
service mariadb start
#sleep for 1 sec to avoid some message problems
sleep 1

# Creat database for wordpress
mariadb -e "CREATE DATABASE $DB_NAME;"
# Creat user and give it privilege to wordpress database
mariadb -e "CREATE USER $DB_USER@localhost IDENTIFIED BY '$DB_PASSWORD';"
mariadb -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost';"
mariadb -e "FLUSH PRIVILEGES;"

# Stoping mariadb service to avoid misconfig between process because we need to run mysqld_safe in fourground process
service mariadb stop

# give init process to mysqld_safe script
exec "$@"