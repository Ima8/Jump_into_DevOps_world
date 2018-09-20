sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://nyc2.mirrors.digitalocean.com/mariadb/repo/10.3/ubuntu xenial main'
sudo apt-get update
sudo apt-get install mariadb-server -y
sudo apt-get install rsync -y
mysql -furoot < "mysql_secure_installation.sql"
