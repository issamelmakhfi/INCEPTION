#!bin/bash

DB_NAME="wordpress"

service mariadb start

mariadb -e "CREATE DATABASE $DB_NAME;"