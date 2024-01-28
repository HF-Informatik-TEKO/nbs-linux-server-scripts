#!/bin/bash
# Install Apache
sudo apt update
sudo apt install apache2 -y
echo "Done with installation"

# Config Firewall
sudo ufw allow in "Apache"
echo "Done with firewall configuration"
