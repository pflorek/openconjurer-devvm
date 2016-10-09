#!/usr/bin/env bash

echo "${RED}Installing docker${WHITE}"

# https://docs.docker.com/engine/installation/linux/ubuntulinux/
apt-get -y install apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo 'deb https://apt.dockerproject.org/repo ubuntu-xenial main' > /etc/apt/sources.list.d/docker.list
apt-get update
# apt-get -y install linux-image-extra-$(uname -r) linux-image-extra-virtual
apt-get -y install docker-engine

curl -sSL https://github.com/docker/compose/releases/download/1.8.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

groupadd docker
usermod -aG docker ubuntu

service docker start
systemctl enable docker
