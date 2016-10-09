#!/usr/bin/env bash

apt-get -y install vsftpd
service vsftpd start
systemctl enable vsftpd
