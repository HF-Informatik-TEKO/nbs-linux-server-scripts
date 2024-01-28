 #!/bin/bash
read -p "Do you really want to remove MySQL and all it's configurations? (y/n): " is_remove

if [[ $is_remove == "y" ]]; then
        sudo systemctl stop mysql
        sudo apt purge mysql-server mysql-client mysql-common mysql-server-core-* mysql-client-core-*
        sudo rm -rf /var/lib/mysql
        sudo apt autoclean
        sudo apt autoremove

        read -p "Do you want to close MySQL port in firewall? (y|n): " is_firewall
        if [[ $is_firewall == "y" ]]; then
            sudo ufw deny "mysql"
            sudo ufw reload
        fi
fi