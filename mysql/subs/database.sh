#!/bin/bash
dbname=$1
tblname=$2

# Create Database.
sudo mysql -e "CREATE DATABASE $dbname;"
echo "-created database $dbname"

# Create Table.
sudo mysql -e "CREATE TABLE $dbname.$tblname(id INT AUTO_INCREMENT, value VARCHAR(500), PRIMARY KEY(id));"
echo "-created table $tblname"

# Insert Data.
sudo mysql -e "INSERT INTO $dbname.$tblname (value) VALUES('first item'),('second item'),('third item');"
echo "-inserted test data"

# Display Data.
echo "-preview of $dbname.$tblname: (max 10 items)"
echo "$(sudo mysql -e "SELECT * FROM $dbname.$tblname LIMIT 10;")"