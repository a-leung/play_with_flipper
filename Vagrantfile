Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provider 'virtualbox' do |v|
    v.memory = 512
    v.cpus = 2
  end

  config.vm.network "forwarded_port", guest: 3000, host: 3000
  
  config.vm.provision :shell, path: "vagrant_scripts/install-rvm.sh", args: "stable", privileged: false
  config.vm.provision :shell, path: "vagrant_scripts/install-ruby.sh", args: "2.5", privileged: false

  config.vm.provision :shell, path: "vagrant_scripts/bundle.sh", privileged: false

end
