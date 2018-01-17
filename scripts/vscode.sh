#!/usr/bin/env bash

# Test if vscode is installed
code --version > /dev/null 2>&1
VSCODE_IS_INSTALLED=$?

if [ $VSCODE_IS_INSTALLED -e 0 ]; then
    echo ">>> info : vscode is installed"
    exit 1
fi

echo ">>> Installing  VSCode";

# Install VSCode
sudo apt-get update
sudo apt-get -y code
