#!/bin/bash -eux
echo "deb http://deb.theforeman.org/ jessie $FOREMAN_VERSION" > /etc/apt/sources.list.d/foreman.list
echo "deb http://deb.theforeman.org/ plugins $FOREMAN_VERSION" >> /etc/apt/sources.list.d/foreman.list
wget -q http://deb.theforeman.org/pubkey.gpg -O- | apt-key add -
apt-get update
apt-get install -y foreman-installer
