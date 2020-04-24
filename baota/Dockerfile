FROM centos 

RUN yum update \ 
    && yum install wget -y

COPY ./install.sh /home

RUN chmod 777 /home/install.sh \
    && echo y | /bin/bash /home/install.sh

VOLUME ["/var/www/html/"]

EXPOSE 8888
EXPOSE 21
EXPOSE 3306
EXPOSE 80
EXPOSE 443

#ENTRYPOINT ["/etc/init.d/bt","start"]
