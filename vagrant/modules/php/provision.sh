sudo yum -y update
sudo yum -y install epel-release
sudo mkdir /root/php-install
cd /root/php-install
sudo wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
sudo wget https://centos6.iuscommunity.org/ius-release.rpm
sudo rpm -Uvh ius-release*.rpm
cd /
rm -rf /root/php-install
sudo yum -y update
sudo yum -y --skip-broken install php56u php56u-*