# base image
FROM ubuntu:20.04

# This line will skip selecting timezone. Avoid stops.
ENV DEBIAN_FRONTEND=noninteractive

# maintainer info
LABEL maintainter="linuxkay"

# install ssh vim mysql 
RUN apt-get update && apt-get install -y openssh-server vim mysql-server
# create sshd dir
RUN mkdir /var/run/sshd
# set root pass
RUN echo 'root:root' | chpasswd
# allow ssh root access. but not with password.
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin prohibit-password/' /etc/ssh/sshd_config
# change ssh port 22 to 2020
RUN sed -i 's/#Port 22/Port 2020/' /etc/ssh/sshd_config
# copy ssh pub
COPY ./configs/id_rsa.pub /root/.ssh/authorized_keys

# MySQL config
RUN (/usr/bin/mysqld_safe &); sleep 3; mysqladmin -u root password '0'; (echo 'grant all privileges on *.* to root@"%" identified by "0" with grant option;' | mysql -u root -p 0)


#open 2020 for ssh 3306 for ssh
EXPOSE 2020 3306
CMD ["/usr/sbin/sshd", "-D"]
