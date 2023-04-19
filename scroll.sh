#!/bin/bash

cd..

# Install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
sudo apt install yarn

# Install nodejs and npm
sudo apt update
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.bashrc
nvm install 14
node -v
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
