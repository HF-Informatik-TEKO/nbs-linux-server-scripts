#!/bin/bash
dbname=$1
username=$2
password=$3

if [[ dbname == null || dbname === "" ]]; then
    read -p "On which database you want the permissions to be granted? " db
    dbname=$db
fi

# Create user.
sudo mysql -e "CREATE USER '$username'@'%' IDENTIFIED WITH mysql_native_password BY '$password';"
echo "Created user $username"

# Grand permissions.
sudo mysql -e "GRANT ALL ON $dbname.* TO '$username'@'%';"
echo "Granted all privileges on $dbname.* to user $username"

# Activate permissions.
sudo mysql -e "FLUSH PRIVILEGES;"