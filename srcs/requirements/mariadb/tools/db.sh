#!/bin/bash

service mariadb start

sleep 2

# mariadb -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
mariadb -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"
mariadb -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
mariadb -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';"
mariadb -e "FLUSH PRIVILEGES;"

service mariadb stop

mysqld_safe
# mariadbd

