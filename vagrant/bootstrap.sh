#!/usr/bin/env bash
sudo yum -y update

# provision modules:
sh /vagrant/modules/aliases/provision.sh
sh /vagrant/modules/nano/provision.sh
sh /vagrant/modules/git/provision.sh
sh /vagrant/modules/mlocate/provision.sh
sh /vagrant/modules/wget/provision.sh
sh /vagrant/modules/php/provision.sh
sh /vagrant/modules/apache/provision.sh
sh /vagrant/modules/mysql/provision.sh
sh /vagrant/modules/npm/provision.sh
sh /vagrant/modules/gulp/provision.sh
sh /vagrant/modules/composer/provision.sh
sh /vagrant/modules/sass/provision.sh