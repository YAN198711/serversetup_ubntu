#!/bin/bash
cd ~

# pyenvのインストール(2.7)
yes | sudo apt install python2.7

# Node.jsのインストール
yes | sudo apt install nodejs npm
sudo npm install n -g
# sudo n stable
sudo n 12.20.2
yes | sudo apt purge nodejs npm
exec $SHELL -l
# node -v

# Cloud9のインストール
git clone https://github.com/YAN198711/core.git c9sdk
cd c9sdk
scripts/install-sdk.sh
cd ~

sudo ufw allow 8080/tcp
yes | sudo ufw enable
# 開かれているポートを確認する
# sudo ufw status

# foreverをインストール
sudo npm install forever -g
