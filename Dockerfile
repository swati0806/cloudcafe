FROM centos:latest
MAINTAINER swati27namdev@gmail.com
RUN yum install httpd git -y
RUN git clone https://github.com/swati0806/cloudcafe /var/www/html
WORKDIR /var/www/html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 4000
