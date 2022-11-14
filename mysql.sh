#!/bin/bash 

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

sudo apt-get -y install mysql-server
systemctl start mysql-server