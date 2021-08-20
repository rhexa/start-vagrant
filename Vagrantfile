Vagrant.configure("2") do |config|

  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "ubuntu/bionic64"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "Android_Dev_U-18.04-xfce"

    # Display the VirtualBox GUI when booting the machine
    vb.gui = true

    # Define the VM memory size
    vb.memory = "4096"
    vb.cpus = 4
  end

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
  SHELL

  config.vm.provision "shell", path: "apt/xfce4.sh"
  config.vm.provision "shell", path: "apt/vscode.sh"
  config.vm.provision "shell", path: "apt/android-studio-snapd.sh"
end
