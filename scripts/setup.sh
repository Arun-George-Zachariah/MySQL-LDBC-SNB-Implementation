#!/usr/bin/bash

# Ref
https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-18-04

# Updating package index and installing mysql-server package.
sudo apt update
sudo apt install mysql-server
sudo mysql_secure_installation

#Password
clpasswd

# To login
mysql -u root --password

echo "create database test" | mysql -u root --password=clpasswd


/usr/bin/mysql -u root --password=clpasswd --database=test < test.sql

/usr/bin/mysql -u root --password=clpasswd test test.sql
