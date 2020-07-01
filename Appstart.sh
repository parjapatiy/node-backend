#!/bin/bash
cd /apps
sudo apt-get update -y
sudo apt get install curl -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash 
sudo apt-get install nodejs -y
sudo npm i -g pm2
sudo pm2 stop all
sudo pm2 start  app.js
