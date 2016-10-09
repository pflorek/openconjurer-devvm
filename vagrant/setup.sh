#!/usr/bin/env bash

# Fixing CRLF->LF
apt-get -y install dos2unix
dos2unix /vagrant/setup/*.sh

for script in /vagrant/setup/*.sh; do
    . $script
done

exit 0
