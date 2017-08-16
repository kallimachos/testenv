Vagrant.configure("2") do |config|
  config.vm.define :testenv do |testenv|
    testenv.vm.box = "ubuntu/trusty64"
    testenv.vm.network :private_network, ip: "192.168.31.100"
    testenv.vm.hostname = "testenv"
    testenv.vm.provision :shell, path: "provision-testenv", args: ENV['ARGS']
    testenv.vm.synced_folder "shared/", "/home/vagrant/shared", create: true
    testenv.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--cpus", "2", "--memory", 4096]
    end
  end
  config.vm.define :ubuntu do |ubuntu|
    ubuntu.vm.box = "ubuntu/trusty64"
    ubuntu.vm.network :private_network, ip: "192.168.31.101"
    ubuntu.vm.hostname = "ubuntu"
    ubuntu.vm.provision :shell, path: "provision-ubuntu", args: ENV['ARGS']
    ubuntu.vm.synced_folder "shared/", "/home/vagrant/shared", create: true
    ubuntu.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--cpus", "2", "--memory", 4096]
    end
  end
  config.vm.define :centos do |centos|
    centos.vm.box = "centos/7"
    centos.vm.network :private_network, ip: "192.168.31.102"
    centos.vm.hostname = "centos"
    centos.vm.provision :shell, path: "provision-centos", args: ENV['ARGS']
    centos.vm.synced_folder "shared/", "/home/vagrant/shared", create: true
    centos.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--cpus", "2", "--memory", 4096]
    end
  end
end
