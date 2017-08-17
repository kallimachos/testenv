Vagrant.configure("2") do |config|
  config.vm.define :m, primary: true do |m|
    m.vm.box = "ubuntu/trusty64"
    m.vm.network :private_network, ip: "192.168.31.100"
    m.vm.hostname = "m"
    m.vm.provision :shell, path: "provision-m", args: ENV['ARGS']
    m.vm.synced_folder "shared/", "/home/vagrant/shared", create: true
    m.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--cpus", "2", "--memory", 4096]
    end
  end
  config.vm.define :xenial, autostart: false do |xenial|
    xenial.vm.box = "ubuntu/xenial64"
    xenial.vm.network :private_network, ip: "192.168.31.101"
    xenial.vm.hostname = "xenial"
    xenial.vm.provision :shell, path: "provision-ubuntu", args: ENV['ARGS']
    xenial.vm.synced_folder "shared/", "/home/vagrant/shared", create: true
    xenial.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--cpus", "2", "--memory", 4096]
    end
  end
  config.vm.define :trusty, autostart: false do |trusty|
    trusty.vm.box = "ubuntu/trusty64"
    trusty.vm.network :private_network, ip: "192.168.31.102"
    trusty.vm.hostname = "trusty"
    trusty.vm.provision :shell, path: "provision-ubuntu", args: ENV['ARGS']
    trusty.vm.synced_folder "shared/", "/home/vagrant/shared", create: true
    trusty.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--cpus", "2", "--memory", 4096]
    end
  end
  config.vm.define :debian8, autostart: false do |debian8|
    debian8.vm.box = "bento/debian-8.8"
    debian8.vm.network :private_network, ip: "192.168.31.103"
    debian8.vm.hostname = "debian8"
    debian8.vm.provision :shell, path: "provision-debian8", args: ENV['ARGS']
    debian8.vm.synced_folder "shared/", "/home/vagrant/shared", create: true
    debian8.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--cpus", "2", "--memory", 4096]
    end
  end
  config.vm.define :debian7, autostart: false do |debian7|
    debian7.vm.box = "bento/debian-7.11"
    debian7.vm.network :private_network, ip: "192.168.31.104"
    debian7.vm.hostname = "debian7"
    debian7.vm.provision :shell, path: "provision-debian7", args: ENV['ARGS']
    debian7.vm.synced_folder "shared/", "/home/vagrant/shared", create: true
    debian7.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--cpus", "2", "--memory", 4096]
    end
  end
  config.vm.define :centos7, autostart: false do |centos7|
    centos7.vm.box = "bento/centos-7.3"
    centos7.vm.network :private_network, ip: "192.168.31.105"
    centos7.vm.hostname = "centos7"
    centos7.vm.provision :shell, path: "provision-centos7", args: ENV['ARGS']
    centos7.vm.synced_folder "shared/", "/home/vagrant/shared", create: true
    centos7.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--cpus", "2", "--memory", 4096]
    end
  end
  config.vm.define :centos6, autostart: false do |centos6|
    centos6.vm.box = "bento/centos-6.9"
    centos6.vm.network :private_network, ip: "192.168.31.106"
    centos6.vm.hostname = "centos6"
    centos6.vm.provision :shell, path: "provision-centos6", args: ENV['ARGS']
    centos6.vm.synced_folder "shared/", "/home/vagrant/shared", create: true
    centos6.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--cpus", "2", "--memory", 4096]
    end
  end
  config.vm.define :osx, autostart: false do |osx|
    osx.vm.box = "jhcook/osx-elcapitan-10.11"
    osx.vm.network :private_network, ip: "192.168.31.107"
    osx.vm.hostname = "osx"
    osx.vm.provision :shell, path: "provision-osx", args: ENV['ARGS']
    osx.vm.synced_folder "shared/", "/Users/vagrant/shared", disabled: true
    osx.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--cpus", "2", "--memory", 4096]
    end
  end
  config.vm.define :windows, autostart: false do |windows|
    windows.vm.box = "Microsoft/EdgeOnWindows10"
    windows.vm.network :private_network, ip: "192.168.31.108"
    windows.vm.hostname = "windows"
    windows.vm.provision :shell, path: "provision-windows", args: ENV['ARGS']
    windows.vm.synced_folder "shared/", "/home/vagrant/shared", create: true
    windows.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--cpus", "2", "--memory", 4096]
    end
  end
end