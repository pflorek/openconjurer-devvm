# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # ubuntu/xenial64 is not supported
  config.vm.box = "bento/ubuntu-16.04"

  # https://github.com/mitchellh/vagrant/issues/7648
  config.vm.provider "virtualbox" do |v|
    v.customize ['modifyvm', :id, '--cableconnected1', 'on']
  end

  config.vm.network :forwarded_port, host: 7474, guest: 7474
  config.vm.network :forwarded_port, host: 7687, guest: 7687
  config.vm.network :forwarded_port, host: 8080, guest: 8080
  config.vm.network :forwarded_port, host: 27017, guest: 27017

  config.vm.synced_folder "./vagrant", "/vagrant", :mount_options => ["dmode=777","fmode=777"]
  config.vm.synced_folder "./docker", "/docker", :mount_options => ["dmode=777","fmode=777"]

  config.vm.provision :shell, path: "./vagrant/setup.sh", keep_color: true, name: "Setup"
  config.vm.provision :shell, path: "./vagrant/provision.sh", run: "always", name: "Provision"
end
