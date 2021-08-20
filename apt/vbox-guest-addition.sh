#!/bin/bash

# VBox version 6.1.26
# for specific version, download here
# http://download.virtualbox.org/virtualbox/
wget http://download.virtualbox.org/virtualbox/6.1.26/VBoxGuestAdditions_6.1.26.iso
sudo mkdir /media/VBoxGuestAdditions
sudo mount -o loop,ro VBoxGuestAdditions_4.3.8.iso /media/VBoxGuestAdditions
sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
rm VBoxGuestAdditions_4.3.8.iso
sudo umount /media/VBoxGuestAdditions
sudo rmdir /media/VBoxGuestAdditions