FROM linux 2:latest
LABEL maintainer "pedro"
RUN yum -y update
RUN yum -y install httpd
RUN yum -y install php
CMD /usr/sbin/httpd -D FOREGROUND
WORKDIR /var/www/html
COPY index.html /var/www/html
EXPOSE 80
