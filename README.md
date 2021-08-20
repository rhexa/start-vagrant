# Lab Vagrant

Lab Vagrant is created for learning and practicing purpose of working with Vagrant.

## Getting Started

### Installing Vagrant
  - Install [VirtualBox](https://www.virtualbox.org/)
  - Install [Vagrant](https://www.vagrantup.com/downloads)
  - Check if Vagrant has been succesfully installed by running `vagrant -v` on terminal

### Running VM with Vagrant
- Create a new directory for Vagrant project
```
mkdir <vagrant-project-directory>
cd <vagrant-project-directory>
```
- Browse the desired VM image to run on [Vagrant Repository](https://app.vagrantup.com/boxes/search). In this case we are using `ubuntu/bionic64`.
- Initiate the project and run the VM.
```
# Initiate the project by creating the default Vagrantfile
vagrant init ubuntu/bionic64

# Run the VM
vagrant up
```