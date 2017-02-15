#!/bin/bash -x

/usr/local/bin/bundle install --gemfile /root/puppet-module-skelinit/Gemfile

mkdir -p /root/.puppet/var/puppet-module
cd /root/.puppet/var/puppet-module/

[ -e skeleton ] && rm skeleton/ -Rf
git clone $1 skeleton
cd skeleton
/usr/local/bin/rake install

cd /root/puppet-module-target

modulename=`cut -d "-" -f 2- <<< $2`
[ -e $modulename ] && rm $modulename -Rf
puppet module generate $2 --skip-interview