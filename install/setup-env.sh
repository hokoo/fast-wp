#!/bin/bash

# create .env from example
echo "Create .env from example"
if [ ! -f ./.env ]; then
    echo "File .env doesn't exist. Recreating..."
    cp ./install/.example/.env.example ./.env && echo "Ok."
else
    echo "File .env already exists."
fi
