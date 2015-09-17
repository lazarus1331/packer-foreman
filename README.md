# packer-foreman
Packer builds for creating an instance running theforeman

# Foreman configuration
You must upload an 'answers.yaml' file into the 'data/' directory.
An example can be downloaded here: https://raw.githubusercontent.com/theforeman/foreman-installer/develop/config/answers.yaml
An 'answers.yaml' file MUST exist before building 

Foreman version is controlled via user variable 'FOREMAN_VERSION'; Default is 1.9

# Usage
    make {vagrant|qemu}[debug]

    For Vagrant:
        vagrant box add my-box builds/vagrant/packer-debian-foreman.box
