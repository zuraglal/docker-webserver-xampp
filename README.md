# XAMPP server installation in docker container
XAMPP is a completely free, open source croos-platform web server and easy to install Apache distribution.

The term can be broken down as follows:

X → An ideographic letter referring to cross-platform

A → Apache, or its expanded form, Apache HTTP Server

M → MariaDB (formerly MySQL)

P → PHP

P → Perl


# Before first installation run this commands from the host terminal:
$ sudo cp docker-webserver.service /etc/systemd/system/docker-webserver.service

$ sudo systemctl daemon-reload

$ sudo systemctl enable docker-webserver.service

$ sudo systemctl start docker-webserver.service

# Run this command from the host terminal:

$ ./rebuild.sh
