#!bin/bash

# chown -R mysql:mysql /var/lib/mysql
sed -i "s/127.0.0.1/0.0.0.0/g" /etc/mysql/mariadb.conf.d/50-server.cnf

# Starting mariadb service
/etc/init.d/mysql start
# sleep for 1 sec to avoid some message problems
sleep 1
if [ ! -d "/var/lib/mysql/$DB_NAME" ]
then

mariadb -e "GRANT ALL ON *.* to root@'localhost' IDENTIFIED BY '$ROOT_PASS';"

# Creat database for wordpress
mariadb -e "CREATE DATABASE $DB_NAME;"
# Creat user and give it privilege to wordpress database
mariadb -e "CREATE USER $DB_USER@'%' IDENTIFIED BY '$DB_PASSWORD';"
mariadb -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';"
mariadb -e "FLUSH PRIVILEGES;"

fi

# Stoping mariadb service to avoid misconfig between process because we need to run mysqld_safe in fourground process
/etc/init.d/mysql stop

# give init process to mysqld_safe script
exec "$@"