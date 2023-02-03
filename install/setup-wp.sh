#!/bin/bash

echo "WP setup preparing..."

# import variables from .env file
. ./.env

[ ! -f ./index.php ] && echo "<?php
define( 'WP_USE_THEMES', true );
require( './wordpress/wp-blog-header.php' );" > index.php

if [ ! -f wp-config.php ]; then
  WPCONFIG=$(< ./install/.example/wp-config.php.template)
  printf "$WPCONFIG" $DB_NAME $DB_USER $DB_PASSWORD $DB_HOST > ./wp-config.php
fi

# install WP
echo "WP database init"
echo -n "Would you init new instance (y), or do nothing (n)? (y/n)"

read item
case "$item" in
    y|Y)
    echo "WP database init new instance..."
    wp core install --url=$PROJECT_BASE_URL --title="$WP_TITLE" --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL --skip-email
    printf "WP User Admin: %s \nWP User Pass: %s\n" $WP_ADMIN $WP_ADMIN_PASS
      ;;

    *)
      echo "WP database has not been touched."
      ;;
esac
