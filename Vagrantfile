# Install required plugins
required_plugins = ["vagrant-hostsupdater"]
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure("2") do |config|
  config.vm.define "app" do |app|
      app.vm.box = "ubuntu/xenial64"
      config.vm.network "private_network", ip: "192.168.10.100"
      config.hostsupdater.aliases = ["development.local"]
      config.vm.synced_folder ".", "/home/ubuntu/app"
      config.vm.provision "shell", path: "environment/app/provision.sh", privileged: false
      config.vm.synced_folder "node-sample-app-master/", "/home/node-sample-app-master"
    end

  config.vm.define "db" do |db|
      db.vm.box = "ubuntu/xenial64"
      config.vm.network "private_network", ip: "192.168.10.110"
      config.hostsupdater.aliases = ["development.local"]
      config.vm.synced_folder ".", "/home/ubuntu/app"
      config.vm.provision "shell", path: "environment/db/provisiondb.sh", privileged: false
    end

end
