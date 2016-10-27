#!/bin/bash -eux
mkdir -p /etc/foreman
cp /tmp/answers.yaml /etc/foreman/foreman_installer_answers.yaml
foreman-installer -v | tee /root/foreman-install.log
