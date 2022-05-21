#!/bin/bash

# run from project root directory
bash ./install/setup-env.sh

echo "Containers creating..."
docker-compose up -d
echo "Containers created."

echo "Composer install..."
docker-compose exec php sh -c "composer install && bash ./install/setup-wp.sh"
