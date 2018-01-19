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
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
sudo tar -xzf postman.tar.gz -C /opt
rm postman.tar.gz
sudo ln -s /opt/Postman/Postman /usr/bin/postman