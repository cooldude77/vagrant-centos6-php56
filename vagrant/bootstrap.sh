#!/usr/bin/env bash
sudo yum update

# --- Bootstrap Modules: ---
sh /vagrant/strapCommands.sh
sh /vagrant/strapPhp.sh
sh /vagrant/strapNginx.sh
sh /vagrant/strapApache.sh
sh /vagrant/strapMysql.sh
sh /vagrant/strapNpm.sh
sh /vagrant/strapComposer.sh
sh /vagrant/strapSass.sh