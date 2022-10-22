#!/bin/bash
#Description : a script to automate the installation of docker.
#Author : Hendrix T.
#Date : 10-21-2022

echo "Docker will be removed if available and new version installed "
yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
echo "docker has been removed and will install next "

echo "installing yum-utils package (which provides the yum-config-manager)"

yum install -y yum-utils
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

echo "Install the latest version of Docker Engine"

yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin

echo "verify that the fingerprint matches 060A 61C5 1B55 8A7F 742B 77AA C52F EB6B 621E 9F35"
echo "install a specific version of Docker Engine, list the available versions in the repo, then select and install"

yum list docker-ce --showduplicates | sort -r

yum install docker-ce-<VERSION_STRING> docker-ce-cli-<VERSION_STRING> containerd.io docker-compose-plugin
echo "start docker"
systemctl start docker
echo "show docker status"
 systemctl status docker
echo "Verify that Docker Engine is installed correctly by running the hello-world image."

 sudo docker run hello-world

