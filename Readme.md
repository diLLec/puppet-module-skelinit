# About
This vagrant box will initialize a centos-7 box with puppet and then generates a module based on the module skeleton 
of https://github.com/spiette/puppet-module-skeleton.git into the target /directory 

# Usage
* edit Vagrantfile on line 32 and change 'mymodule' to something like `<user>-<modulename>`
* run `vagrant up`