sudo yum install phpMyAdmin -y
sudo cp -f /vagrant/modules/phpMyAdmin/confs/phpMyAdmin.conf /etc/httpd/conf.d/
sudo cp -f /vagrant/modules/phpMyAdmin/confs/config.inc.php /etc/phpMyAdmin/
sudo service httpd restart