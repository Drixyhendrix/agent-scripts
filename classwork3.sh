#!/bin/bash
#Description : script 3 (installing Apache on ubuntu)
#Author : Hendrix T.
#Date : 10-21-2022


echo " installing apache on ubuntu server "


apt-get update

apt-get install apache2 -y

echo "confingure firewall"
ufw show app list

echo "allow web traffic on port 80"
ufw allow 'Apache'

echo "installation completed!"

echo "enable Apache"
ufw enable 'Apache' -y

#Stop Apache

#systemctl stop apache2.service

#Start Apache:

#systemctl start apache2.service

#Restart Apache:

#systemctl restart apache2.service

#Reload Apache:

# systemctl reload apache2.service

#--end
