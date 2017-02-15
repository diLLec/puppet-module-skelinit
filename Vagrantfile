#
# Vagrantfile for asterisk manager
#

Vagrant.configure('2') do |config|
  config.vm.box = 'bento/centos-7.2'

  config.vm.network 'forwarded_port', guest: 22, host: 2200
  config.vm.network 'forwarded_port', guest: 80, host: 8000
  config.vm.hostname = 'puppet-module-skel-vagrant'
  config.vm.provider 'virtualbox' do |v|
      v.memory = 2048
      v.cpus = 2
  end

  config.vm.synced_folder '.', '/root/puppet-module-skelinit', type: 'virtualbox'
  config.vm.synced_folder 'target', '/root/puppet-module-target', type: 'virtualbox'

   if Vagrant.has_plugin?('vagrant-proxyconf')
     config.proxy.http     = 'http://proxy.mms-dresden.de:8080/'
     config.proxy.https    = 'http://proxy.mms-dresden.de:8080/'
     config.proxy.no_proxy = 'localhost,127.0.0.1,.example.com'
   end

  config.vm.provision 'shell' do |s|
    s.path = 'vagrant_bootstrap_before_puppet.sh'
  end

  config.vm.provision 'shell' do |s|
    s.path = 'vagrant_bootstrap_skelinit.sh'
    # change mymodule to your desired module name
    s.args = ['https://github.com/spiette/puppet-module-skeleton.git', 'mymodule']
  end
end
