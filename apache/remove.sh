 #!/bin/bash
read -p "Do you really want to remove Apache and all it's configurations? (y/n): " is_remove

if [[ $is_remove != null && $is_remove == "y" ]]; then
        sudo systemctl stop apache2

        read -p "Do you want to close Apache port in firewall? (y|n): " is_firewall
        if [[ $is_firewall != null && $is_firewall == "y" ]]; then
            sudo ufw deny "apache"
            sudo ufw reload
        fi

        sudo apt purge apache2 apache2-utils apache2-bin -y
        sudo apt autoclean
        sudo apt autoremove
        sudo rm -rf /etc/apache2
        sudo rm -rf /var/www
fi