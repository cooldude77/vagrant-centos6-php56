sudo yum install -y httpd
sudo chkconfig httpd on
cp -f /vagrant/modules/apache/confs/dedicated.conf /etc/httpd/conf/httpd.conf
sudo service httpd restart