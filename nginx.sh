#!/bin/bash

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

sudo apt update -y &&
sudo apt install -y nginx
echo "Hello World" > /var/www/html/index.html
systemctl start nginx