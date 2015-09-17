#!/bin/bash -eux
apt-get install -y git puppet puppet-common

# Set puppetmaster if environment variable is set
if [ $PUPPET_MASTER ]; then
    /bin/sed -i '/main/a server = $PUPPET_MASTER' /etc/puppet/puppet.conf;
    /etc/init.d/puppet reload;
fi
