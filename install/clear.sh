#!/bin/bash
echo -n "Script will remove all configs and generated folders. Sure? (y/n) "

read item
case "$item" in
    y|Y)
    rm -rf ./vendor
    rm -rf ./wordpress
    rm -rf ./wp-content
    rm -f ./wp-config.php
    rm -f ./index.php
    rm -rf ./install/nginx
    rm -f ./install/php-fpm/error.log
    rm -f ./.env
      ;;

    *)
      echo "Nothing has been done."
      ;;
esac
