#
# Vagrant file for running atlassian services
#
Vagrant::Config.run do |config|

  # default base box
  config.vm.box = "opscode-ubuntu-12.04.box"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/boxes/opscode-ubuntu-12.04.box"
  
  # provision a fisheye VM
  config.vm.define :fisheye do | fisheye |
    fisheye.vm.customize ["modifyvm", :id, "--memory", "1024"]
    fisheye.vm.customize ["modifyvm", :id, "--name", "Fisheye"] 
    
    fisheye.vm.host_name = "fisheye"
    fisheye.vm.network :hostonly, "33.33.50.10"
    fisheye.vm.forward_port 22, 22310 

    fisheye.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = [ "./cookbooks", ".." ]
      
      chef.add_recipe "vagrant-ohai"
      chef.add_recipe "atlassian::fisheye"

      chef.json = { }
      chef.log_level = :debug
    end
  end

end


