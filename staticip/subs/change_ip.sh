#!/bin/bash
echo "Use 'hostname -I' or 'ip a' to see your current ip-v4-address"
read -p "Current ip-v4-address (e.g. 192.168.1.200): " old_ip
read -p "Current subnet (e.g. 24): " old_subnet
read -p "New ip-v4-address (e.g. 192.168.1.200): " new_ip
read -p "New subnet (e.g. 24): " new_subnet

# Replace ip-v4-address in netplan
sudo sed -i "s/$old_ip\/$old_subnet/$new_ip\/$new_subnet/g" /etc/netplan/00-installer-config.yaml

# Make new netplan work
sudo netplan apply