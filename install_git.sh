#Taken from https://tecadmin.net/install-git-on-centos-fedora/

#Install Required Packages
yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel -y
yum install gcc perl-ExtUtils-MakeMaker -y

#Install Git on CentOS & Fedora
cd /usr/src
wget https://www.kernel.org/pub/software/scm/git/git-2.19.0.tar.gz #change the version if there is a newer one avaiable in all lines with reference to a version
tar xzf git-2.19.0.tar.gz
cd git-2.19.0
make prefix=/usr/local/git all
make prefix=/usr/local/git install

#Setup Environment
echo "export PATH=/usr/local/git/bin:$PATH" >> /etc/bashrc
source /etc/bashrc

git --version
