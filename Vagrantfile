# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box_url = 'secret'
  config.vm.box = 'centos-64-x86_64-base'
  config.cache.auto_detect = true
  config.vbguest.auto_update = true

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--memory', '512']
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifest_file  = 'site.pp'
    puppet.manifests_path = 'manifests'
    puppet.module_path    = [ 'modules', 'shared' ]
    puppet.facter         = { }
    puppet.options        = '--show_diff'
  end

  config.vm.hostname = 'mff-monitoring01'
  config.vm.network :private_network, ip: '10.240.252.3'

end
