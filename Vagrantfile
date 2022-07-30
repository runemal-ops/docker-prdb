Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian10"
  config.vm.synced_folder ".", "/vagrant", disabled: false
  config.vm.provision "shell", path: "init.sh"
end