# Start Vagrant

Start Vagrant is created to quikly start working with Vagrant.

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

## Working with Vagrantfile

### Resizing VM disk
Install Vagrant plugin [vagrant-disksize](https://github.com/sprotheroe/vagrant-disksize)
```
vagrant plugin install vagrant-disksize
```
Define the size in the Vagrantfile
```
Vagrant.configure("2") do |config|
    config.disksize.size = '30GB'
end
```

## Creating an image from a newly created VM
### Virtual Box
First we need to grab the name of the VM on the VirtualBox or Vagrantfile if defined.
In Vagrantfile it looks like
```
config.vm.provider "virtualbox" do |vb|
    vb.name = "lab-ubuntu-gui" # This is VM VBox name
end
```

We can also list the VMs installed on Virtual Box by running this command.
```
VBoxManage list vms
```

Run this command to build the new image file from the VM by replacing the name with the name we found earlier.
Params :
- `--base <vm-name>` # vm name we found in Vagrantfile or VBoxManage (!if failed, use --output only)
- `--output <file-path.box>` # path to the image file
```
vagrant package --base <vm-name> --output <file-path.box>
```

## Adding image/box to vagrant
### Adding custom image to vagrant
Params :
- `<file-path.box>` # path to the image file
- `--name <name>` # define the name to reference this image on Vagrant
```
vagrant box add <file-path.box> --name <name>
```
