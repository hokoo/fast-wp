#!/bin/bash

echo "WP setup preparing..."

# prepare file structure
[ ! -d ./wp/ ] && mkdir -p ./wp/ && cp -r ./vendor/wordpress/wordpress/* ./wp
[ ! -d ./wp-content/ ] && mkdir -p ./wp-content/
cp -r ./vendor/wordpress/wordpress/wp-content/* ./wp-content
[ ! -f ./index.php ] && echo "<?php
// WordPress view bootstrapper
define( 'WP_USE_THEMES', true );
require( './wp/wp-blog-header.php' );" > index.php
[ ! -f wp-config.php ] && cp ./install/.example/wp-config.php.example ./wp-config.php

# import variables from .env file
. ./.env

# install WP
echo "WP database init"
wp core install --url=$PROJECT_BASE_URL --title="$WP_TITLE" --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL --skip-email
echo "Done."
