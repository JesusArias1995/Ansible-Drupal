# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :nodo1 do |nodo1|
     nodo1.vm.box = "debian/stretch64"
     nodo1.vm.hostname = "nodo1"
     nodo1.vm.network :public_network,:bridge=>"eth0"
     nodo1.vm.network:private_network, ip: "10.0.0.5"
  end
  config.vm.provision "shell" do |s|
     ssh_pub_key = File.readlines("#{Dir.home}/.ssh/id_ecdsa.pub").first.strip
     s.inline = <<-SHELL
       echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
     SHELL
  end
  config.vm.define :nodo2 do |nodo2|
     nodo2.vm.box = "debian/stretch64"
     nodo2.vm.hostname = "nodo2"
     nodo2.vm.network :public_network,:bridge=>"eth0"
     nodo2.vm.network:private_network, ip: "10.0.0.10"
  end
end

