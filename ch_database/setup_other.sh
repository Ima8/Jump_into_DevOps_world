sudo apt-key adv --keyserver keyserver.ubuntu.com --recv BC19DDBA
sudo add-apt-repository 'deb http://releases.galeracluster.com/mysql-wsrep-5.6/ubuntu xenial main'
sudo add-apt-repository 'deb http://releases.galeracluster.com/galera-3/ubuntu xenial main'
sudo echo "Package: *" >> /etc/apt/preferences.d/galera.pref
sudo echo "Pin: origin releases.galeracluster.com" >> /etc/apt/preferences.d/galera.pref
sudo echo "Pin-Priority: 1001" >> /etc/apt/preferences.d/galera.pref
sudo apt-get update
sudo apt-get install galera-3 galera-arbitrator-3 mysql-wsrep-5.6 -y
sudo apt-get install rsync -y
mysql -furoot < "mysql_secure_installation.sql"
sudo systemctl stop mysql
sudo cp galera.cnf /etc/mysql/conf.d/galera.cnf
sudo systemctl start mysql
