#!/bin/bash


sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nginx -y
sudo apt-get install nodejs -y

curl -sL https://deb.nodesource.com/setup_6.x | sudo bash -
apt-get install -y nodejs

sudo npm install pm2 -g

cd /app
npm install         #reads package.json file
npm start           #runs app.js file
