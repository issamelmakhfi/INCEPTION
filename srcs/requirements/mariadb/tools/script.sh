#!bin/bash

# Starting mariadb service
service mariadb start
#sleep for 1 sec to avoid some message problems
sleep 1

mariadb -e "GRANT ALL ON *.* to root@'localhost' IDENTIFIED BY '$ROOT_PASS';"
# mariadb -e "INSERT INTO mysql.user (Host, User, Password) VALUES ('%', 'root', password('$DB_ROOT_PASS'));"
# mariadb -e "GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION;"

# Creat database for wordpress
mariadb -e "CREATE DATABASE $DB_NAME;"
# Creat user and give it privilege to wordpress database
mariadb -e "CREATE USER $DB_USER@'%' IDENTIFIED BY '$DB_PASSWORD';"
mariadb -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';"
mariadb -e "FLUSH PRIVILEGES;"

# Stoping mariadb service to avoid misconfig between process because we need to run mysqld_safe in fourground process
service mariadb stop

# give init process to mysqld_safe script
exec "$@"