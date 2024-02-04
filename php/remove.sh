#!/bin/bash
read -p "Do you really want to remove PHP? (y/n): " is_remove
if [[ $is_remove == null || $is_remove != "y" ]]; then
    exit 0
fi

# Remove PHP
sudo apt purge php libapache2-mod-php php-mysql -y

echo "Remove Finished" 