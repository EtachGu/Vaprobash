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
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get -y code
