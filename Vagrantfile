# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # It is possible to use URLs to nightly images produced by the Fedora project here. You can find
  # the nightly composes here: https://kojipkgs.fedoraproject.org/compose/
  # Sometimes, a nightly compose is incomplete and does not contain a Vagrant image, so you may need
  # to browse that repository a bit to find the latest successful Vagrant image. For example, at the
  # time of this writing, I could set this setting like this for the latest F24 image:
  # config.vm.box = "https://kojipkgs.fedoraproject.org/compose/rawhide/latest-Fedora-Rawhide/compose/CloudImages/x86_64/images/<imagename>.vagrant-libvirt.box"
  config.vm.box = "centos/7"

  # need to use the default vagrant key
  config.ssh.insert_key = false

  config.vm.provision "shell", inline: "sudo yum install -y epel-release"

  # Comment this line if you would like to disable the automatic update during provisioning
  config.vm.provision "shell", inline: "sudo yum upgrade -y"

  # bootstrap and run with ansible
  config.vm.provision "shell", path: "scripts/bootstrap-ansible.sh"
  config.vm.provision "ansible" do |ansible|
      # Uncomment this if you want debug tools like gdb, tcpdump, et al. installed
      # (you don't, unless you know you do)
      # ansible.extra_vars = { pulp_dev_debug: true }
      ansible.playbook = "ansible/vagrant-playbook.yml"
  end
end
