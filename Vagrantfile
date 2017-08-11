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
end
