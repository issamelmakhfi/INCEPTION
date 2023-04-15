#!bin/bash

DB_NAME="word"
DB_USER="user1"
DB_PASSWORD="testrrr"


service mariadb start

mariadb -e "CREATE DATABASE $DB_NAME;"
mariadb -e "CREATE USER $DB_USER@localhost IDENTIFIED BY '$DB_PASSWORD';"