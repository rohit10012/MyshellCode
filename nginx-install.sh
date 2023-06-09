#!/bin/bash

# Update system packages
sudo yum update -y

# Install the EPEL repository
sudo yum install epel-release -y

# Install Nginx
sudo yum install nginx -y

# Start Nginx
sudo systemctl start nginx

# Enable Nginx to start on boot
sudo systemctl enable nginx

# Open HTTP and HTTPS ports in the firewall
sudo firewall-cmd --zone=public --add-service=http --permanent
sudo firewall-cmd --zone=public --add-service=https --permanent
sudo firewall-cmd --reload

echo "Nginx installation completed."
