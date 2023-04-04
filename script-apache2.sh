#!/bin/bash

apt update
apt apgrade
apt install apache2
apt install unzip
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cp /tmp/linux-site-dio-main/* /var/www/html/ -r
