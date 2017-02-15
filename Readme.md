# About
This vagrant box will initialize a centos-7 box with puppet and then generates a module based on the module skeleton 
of https://github.com/spiette/puppet-module-skeleton.git into the target /directory 

# Usage
* set environment variable: `set module=<user>-<modulename>`
* run: `vagrant up`
* run `vagrant provision` if you like to regenerate the module