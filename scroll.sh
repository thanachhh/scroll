#!/bin/bash

# Install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn

# Install nodejs and npm
sudo apt update
sudo apt install nodejs
sudo apt install npm

# Clone the repository and install dependencies
git clone https://github.com/scroll-tech/scroll-contract-deploy-demo.git
cd scroll-contract-deploy-demo
yarn install

# Upgrade dependencies
yarn upgrade @nomicfoundation/hardhat-chai-matchers@1.0.4
yarn add @ethersproject/bytes@^5.0.0
yarn upgrade hardhat@latest 
