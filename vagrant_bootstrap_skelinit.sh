#!/bin/bash -x

bundle install --gemfile /root/puppet-module-skelinit/Gemfile

mkdir -p /root/.puppet/var/puppet-module
[ -e skeleton ] && rm skeleton/ -Rf

cd /root/.puppet/var/puppet-module/
git clone $1 skeleton
cd skeleton
rake install

cd /root/puppet-module-target
puppet module generate $2 --skip-interview