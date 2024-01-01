USE mysql;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
UPDATE user SET password=PASSWORD("redhat") WHERE user='root';
FLUSH PRIVILEGES;
create database tgindia;
