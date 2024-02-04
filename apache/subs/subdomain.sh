#!/bin/bash
subdomain=$1

# Replace subdomain, if exists
if [ -d "/var/www/$subdomain" ]; then
    read -p "The is already an existing subdomain named '$subdomain'. Would you like to overwrite it? (y|n): " is_overwrite
    if [[ $is_overwrite == null || $is_overwrite != "y" ]]; then
        exit 0
    fi
    sudo rm -rf /var/www/$subdomain
fi

# Create subdomain folder
sudo mkdir /var/www/$subdomain
sudo chown -R $USER:$USER /var/www/$subdomain

# Creade config file
echo "<VirtualHost *:80>
    ServerName $subdomain
    ServerAlias www.$subdomain 
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/$subdomain
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>" | sudo tee /etc/apache2/sites-available/$subdomain.conf > /dev/null

# Add site
sudo a2ensite $subdomain
sudo a2dissite 000-default
sudo apache2ctl configtest
sudo systemctl reload apache2

# Setup default index.html
echo "<html>
  <head>
    <title>$subdomain website</title>
  </head>
  <body>
    <h1>$subdomain Website</h1>
    <p>Feel free to change the website in /var/www/$subdomain/index.html</p>
  </body>
</html>" | sudo tee /var/www/$subdomain/index.html > /dev/null

echo "Done setup subdomain"
