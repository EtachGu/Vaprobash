#!/usr/bin/env bash

# Test if postman is installed
postman --version > /dev/null 2>&1
POSTMAN_IS_INSTALLED=$?

if [ $POSTMAN_IS_INSTALLED -eq 0 ]; then
    echo ">>> info : postman is installed"
    exit 1
fi
echo ">>> Installing  postman";

# Install postman
sudo apt-get update
sudo apt-get install -y postman 