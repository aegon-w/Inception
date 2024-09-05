#!/bin/bash
sleep 2

wp --allow-root core download

wp config create --dbname="$MYSQL_DATABASE" --dbuser="$MYSQL_USER" --dbpass="$MYSQL_PASSWORD" --dbhost="mariadb" --allow-root

wp core install --url="https://m-boukel.42.fr" --title="$WP_TITLE" --admin_name=$WP_ADMIN_NAME --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --allow-root

wp user create  $WORDPRESS_USER $WORDPRESS_USER_EMAIL --role=author --user_pass=$WORDPRESS_USER_PASSWORD --allow-root

mkdir -p "/run/php/"

php-fpm7.4 -F