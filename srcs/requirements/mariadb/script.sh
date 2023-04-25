#!bin/bash

# Starting mariadb service
service mariadb start
#sleep for 1 sec to avoid some message problems
sleep 1

mariadb -e "GRANT ALL ON *.* to root@'localhost' IDENTIFIED BY '$ROOT_PASS';"

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