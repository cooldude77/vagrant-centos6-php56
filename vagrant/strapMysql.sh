#sudo wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
#sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
#sudo rm -f mysql-community-release-el7-5.noarch.rpm
#sudo yum install -y mysql-server
#sudo service mysqld start

sudo yum install -y mysql-server
sudo chkconfig --add mysqld
