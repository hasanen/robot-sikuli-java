# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "saucy64"
  #config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/saucy/current/saucy-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.box_url = "https://googledrive.com/host/0B116wmjet8bDei1FOTcxQWFvbjg/robot-sikuli-java.box"


  config.vm.provider :virtualbox do |vb|
    vb.name = "robot-sikuli-java"
    vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end
  config.vm.provision :shell, :inline => 'apt-get install build-essential ruby1.9.1-dev --no-upgrade --yes'
  config.vm.provision :shell, :inline => "gem install chef --version 11.6 --no-rdoc --no-ri --conservative"
  config.vm.provision :chef_solo do |chef|
    chef.json = {
      "java" => {
        "install_flavor" => "oracle",
        "jdk_version" => "7",
        "oracle" => {
          "accept_oracle_download_terms" => true
        }
      },
      "robotframework_selenium2library_java" => {
        "version" => "1.4.0.6"
      },
      "sikuli" => {
        "version" => "1.0.1"
      }
    }
    chef.add_recipe "common"
    chef.add_recipe "java"
    chef.add_recipe "robotframework_selenium2library_java"
    chef.add_recipe "sikuli"
  end
end
