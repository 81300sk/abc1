FROM centos:7

RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

RUN yum install -y  https://rpms.remirepo.net/enterprise/remi-release-7.rpm

RUN yum install -y --enablerepo=remi-php80 php php-cli

RUN yum install -y --enablerepo=remi-php80 php-mysqlnd

RUN yum install unzip -y

WORKDIR /var/www/html

COPY ./index.html /var/www/html


EXPOSE 80 443

ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]

