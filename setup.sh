#!/bin/bash
sudo apt-get update
sudo apt-get install -y sqlite3 libsqlite3-dev

# Upgrade SQLite
wget https://www.sqlite.org/2024/sqlite-autoconf-3400100.tar.gz
tar xvfz sqlite-autoconf-3400100.tar.gz
cd sqlite-autoconf-3400100
./configure
make
sudo make install
