#!/bin/bash
# Install MySQL
sudo apt install mysql-server -y
echo "Done installing"

# Open config file.
read -p "Make your configurations. (bind-address, port, ...) [press any button to continue]" input
sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
echo "Done with configuration"

# MySQL secure installation.
sudo mysql_secure_installation

# Config firewall.
read -p "Dou you want to make MySQL accessable from outside the server? (firewall) (y|n): " is_firewall
if [[ $is_firewall == "y" ]]; then
    sudo ufw allow "mysql"
    sudo ufw relaod
    echo "Done with firewall configuration"
fi

# Restart MySQL
sudo systemctl restart mysql
echo "Done restarting service"