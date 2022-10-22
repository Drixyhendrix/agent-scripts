#!/bin/bash
#Description : script 3 (installing Apache on centos7)
#Author : Hendrix T.
#Date : 10-21-2022

yum install httpd -y

systemctl status httpd

systemctl start httpd

systemctl enable httpd

echo "ifconfig (get the ip address and type it on the browser. you will see a default apache page.)"