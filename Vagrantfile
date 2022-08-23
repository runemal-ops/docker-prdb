Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian10"
  config.vm.hostname = "debian10.local"
  # The static IP that enables us to access vagrant environment from outside
  config.vm.network "public_network", bridge: "Realtek PCIe GbE Family Controller"
  config.vm.synced_folder ".", "/vagrant", disabled: false
  config.vm.provider "config" do |c|
    c.memory = 4096
    c.cpus = 2
  end
  config.vm.provision "shell", path: "init.sh"
end