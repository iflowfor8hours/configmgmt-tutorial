# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "sgprecise32"

  config.vm.network :private_network, ip: "2.2.2.2"
  # config.vm.network :forwarded_port, guest: 80, host: 8080

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "512", "--cpus", "1"]
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path  = ["cookbooks"]
    chef.add_recipe       "flaskr"
  end
end
