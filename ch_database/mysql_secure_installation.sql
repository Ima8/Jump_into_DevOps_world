UPDATE mysql.user SET Password=PASSWORD('root!!root') WHERE User='root';
DELETE FROM mysql.user WHERE User='';
## DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
CREATE USER 'root'@'%' IDENTIFIED BY 'root!!root';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';
FLUSH PRIVILEGES;
