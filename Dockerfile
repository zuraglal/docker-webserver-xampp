#download the docker image - ubuntu:bionic=18.04
FROM ubuntu:bionic

#get the update program source catalog
RUN apt-get -y update

#install commands
RUN apt-get -y install iputils-ping wget net-tools

#download xampp file to opt directory in docker container
RUN cd /opt/
RUN wget https://www.apachefriends.org/xampp-files/7.4.11/xampp-linux-x64-7.4.11-0-installer.run

#set permission
RUN chmod 700 xampp-linux-x64-7.4.11-0-installer.run

#run the installer
RUN yes | ./xampp-linux-x64-7.4.11-0-installer.run

#start mysql
#edit the httpd-xampp.conf file and replaced with new setting
COPY httpd-xampp.conf /opt/lampp/etc/extra/httpd-xampp.conf

#restart the xampp server
ENTRYPOINT ./opt/lampp/lampp start && sleep infinity
