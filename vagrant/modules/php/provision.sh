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
#sudo yum -y install php56u php56u-opcache php56u-xml php56u-mcrypt php56u-gd php56u-devel php56u-mysql php56u-intl php56u-mbstring php56u-bcmath
sudo yum -y --skip-broken install php56u php56u-*