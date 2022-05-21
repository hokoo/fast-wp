#!/bin/bash

# run from project root directory

docker-compose exec php sh -c "composer install && bash ./install/setup-env.sh && bash ./install/setup-wp.sh"
