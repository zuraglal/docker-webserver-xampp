#!/bin/bash

WSPACE="/mnt/md0/docker/webserver"

sudo docker build --pull -t webserver-img ${WSPACE}/config

sudo systemctl stop docker-webserver

sudo docker rm webserver

sudo docker run -idt \
    --name webserver \
    -p 8080:80 \
    -v ${WSPACE}/public-html:/opt/lampp/htdocs \
    webserver-img

sudo systemctl start docker-webserver
