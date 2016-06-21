# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "minion1" do |box|
    box.vm.box = "ubuntu/trusty64"
    box.vm.network :private_network, ip: "172.17.0.200", :netmask => "255.255.0.0"
    box.vm.synced_folder "salt/roots/", "/srv/salt"
    box.vm.provision :salt do |salt|
      salt.masterless = true
      salt.minion_config = "salt/minion.conf"
      salt.run_highstate = true
      salt.colorize = true
    end
  end

end
