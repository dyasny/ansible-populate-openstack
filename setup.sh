#!/bin/bash

# Configure the system to be used with ansible 2 and shade

sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum -y install python-pip python-virtualenv
sudo yum-config-manager --disable epel

#create a virtual env for ansible
cd $HOME
virtualenv ansible
source $HOME/ansible/bin/activate && pip install ansible shade funcsigs


echo Setup complete.
echo To create objects run create.yml
echo To verify objects run create.yml -c
echo To delete objects run delete.yml
echo
echo Please make sure you source overcloudrc first
echo
