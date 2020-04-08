FROM Ubuntu:latest
MAINTAINER : gopi
RUN apt update
RUN apt install apche2 wget unzip –y
ADD marvel.tar.gz /var/www/html
EXPOSE 80
CMD 	[“/usr/sbin/apche2ctl ”, “-D” , “FOREGROUND”]
WORKDIR /var/www/html/
