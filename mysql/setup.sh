#!/bin/bash
# Install MySQL and make configurations.
read -p "Do you really want to install MySQL-Server and run the setup? (y|n): " is_process
if [[ $is_process == null || $is_process != "y" ]]; then
	exit 0
fi
bash subs/install.sh

# Create database.
read -p "Do you want to create a database? (y|n): " is_database
if [[ $is_database != null && $is_database == "y" ]]; then
	read -p "MySQL database name: " dbname
	read -p "MySQL table name: " tblname
	bash subs/database.sh $dbname $tblname
fi

# Create user with privileges on database.
read -p "Do you want to create a user? (y|n): " is_user
if [[ $is_user != null && $is_user == "y" ]]; then
	read -p "Select username: " username
	read -s -p "Select password: " password
	bash subs/user.sh $dbname $username $password
fi

echo "Setup Finished."