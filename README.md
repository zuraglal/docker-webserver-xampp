# XAMPP server installation in docker container
XAMPP server installation in docker container

# Before first installation
sudo cp docker-webserver.service /etc/systemd/system/docker-webserver.service
sudo systemctl daemon-reload
sudo systemctl enable docker-webserver.service
sudo systemctl start docker-webserver.service
