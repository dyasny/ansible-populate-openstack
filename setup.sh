#!/bin/bash

# Configure the system to be used with ansible 2 and shade

sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
#sudo yum -y install ansible --enablerepo=epel-testing
sudo yum -y install python-pip
sudo yum-config-manager --disable epel

#install ansible and shade from pip

sudo pip install ansible
sudo pip install shade

#shade from pip breaks python-openstackclient, it needs to be 
#reinstalled to become operational again
sudo yumdownloader python-openstackclient
sudo rpm -ivh $(ls -A |grep python-openstackclient) --force

echo Setup complete.
echo To create objects run create.yml
echo To verify objects run create.yml -c
echo To delete objects run delete.yml
echo
echo Please make sure you source overcloudrc first
echo
