#!/bin/bash

cd..

# Install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
sudo apt install yarn

# Install nodejs and npm
sudo apt update
sudo apt install -y curl dirmngr apt-transport-https lsb-release ca-certificates
curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -
echo "deb https://deb.nodesource.com/node_14.x $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/nodesource.list
echo "deb-src https://deb.nodesource.com/node_14.x $(lsb_release -cs) main" | sudo tee -a /etc/apt/sources.list.d/nodesource.list
sudo apt update
sudo apt install -y nodejs
sudo apt update
sudo apt-get install npm


# Clone the repository and install dependencies
git clone https://github.com/scroll-tech/scroll-contract-deploy-demo.git
cd scroll-contract-deploy-demo
yarn install

# Upgrade dependencies
yarn upgrade @nomicfoundation/hardhat-chai-matchers@1.0.4
yarn add @ethersproject/bytes@^5.0.0
yarn upgrade hardhat@latest 

cd ..
cd scroll-contract-deploy-demo
