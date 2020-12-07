#!/usr/bin/env bash

set -e
## Install nodejs
nodeVersion="${1:-10}"
echo "$nodeVersion"
curl -sL "https://deb.nodesource.com/setup_$nodeVersion.x" | sudo -E bash -
sudo apt install nodejs -y

## Install PM2
npm i
echo "export PATH=\$PATH:$(pwd)/node_modules/.bin" >> ~/.profile
source ~/.profile

## Update rsyslog.conf
sudo tee -a /etc/rsyslog.conf > /dev/null <<EOT

#
# ANSI color
#
\$EscapeControlCharactersOnReceive off

#
# provides UDP syslog reception
#
module(load="imudp")
input(type="imudp" port="514")
EOT

sudo systemctl restart rsyslog

## Install pm2-syslog
pm2 install pm2-syslog
