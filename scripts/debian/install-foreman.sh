#!/bin/bash -eux
mkdir -p /etc/foreman
cp /tmp/answers.yaml /etc/foreman/answers.yaml
foreman-installer -v
