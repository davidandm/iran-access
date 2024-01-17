#!/bin/bash

mkdir -p /etc/
cd /etc/
rm hosts.allow
rm hosts.deny
wget https://raw.githubusercontent.com/davidandm/iran-access/main/default/hosts.allow
wget https://raw.githubusercontent.com/davidandm/iran-access/main/default/hosts.deny
sleep 2s
sudo service ssh restart
