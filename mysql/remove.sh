 #!/bin/bash
read -p "Do you really want to remove MySQL and all it's configurations? (y/n): " is_remove
if [[ $is_remove == null || $is_remove != "y" ]]; then
    exit 0
fi

# Stop MySQL from running
sudo systemctl stop mysql

# Firewall
read -p "Do you want to close MySQL port in firewall? (y|n): " is_firewall
if [[ $is_firewall == "y" ]]; then
    sudo ufw deny "mysql"
    sudo ufw reload
fi

# Remove MySQL services
sudo apt purge mysql-server mysql-client mysql-common mysql-server-core-* mysql-client-core-*
sudo apt autoclean
sudo apt autoremove

# Remove remaining files
sudo rm -rf /var/lib/mysql

echo "Remove Finished."