#!/usr/bin/env bash

# Test if cURL is installed
curl --version > /dev/null 2>&1
CURL_IS_INSTALLED=$?

if [ $CURL_IS_INSTALLED -gt 0 ]; then
    echo ">>> info : cURL is not installed"
fi

echo ">>> Installing curl";

# Clone cURL into .cURL folder
sudo apt-get -y curl
