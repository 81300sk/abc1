#!/bin/bash
chown -R mysql:mysql /var/lib/mysql
mysql_install_db --user mysql > /dev/null
mysqld_safe --user mysql &
sleep 5s
mysql -v < /root/mariadb.sql
sleep 5s
ps -wef | grep mysql |  awk '{print $2}' | xargs kill -9
mysqld_safe --user mysql
