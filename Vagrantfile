# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "puppetlabs/centos-6.5-64-puppet"
  config.vm.network :private_network, ip: "192.168.33.10"

  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "."
    puppet.manifest_file  = "puppet.pp"
    puppet.hiera_config_path = "hiera.yaml"
    puppet.working_directory = "/vagrant"
  end
end
