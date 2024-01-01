FROM centos:7

MAINTAINER Maninder Singh Bhui  "maninderbhui@gmail.com"

ADD mariadb.repo /etc/yum.repos.d/mariadb.repo

ADD mariadb.sql /root/mariadb.sql

ADD server.cnf /etc/my.cnf.d/server.cnf

ADD mariadb.sh /root/mariadb.sh

RUN yum install epel-release -y

RUN yum install mariadb-server -y

RUN yum clean all

COPY ./  /opt

COPY Dockerfile /root

RUN chmod +x /root/mariadb.sh

EXPOSE 3306

CMD ["/root/mariadb.sh"]
