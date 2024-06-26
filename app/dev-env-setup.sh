#!/bin/bash
set -e

sudo apt-get update
sudo apt-get install -y sudo
sudo apt-get install -y curl
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Verify npm installation
if ! command -v npm &> /dev/null; then
    echo "npm could not be found, installing Node.js and npm"
    sudo apt-get install -y nodejs npm
fi

sudo npm install --global prettier
