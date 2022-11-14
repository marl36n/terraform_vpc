#!/bin/bash
if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi
apt update
apt install redis-server
systemctl start redis-server