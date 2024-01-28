#!/bin/bash
# Install Apache and make configurations.
read -p "Do you really want to install Apache-Webserver and run the setup? (y|n): " is_process
if [[ $is_process == null || $is_process != "y" ]]; then
	exit 0
fi
bash subs/install.sh

# Subdomain
read -p "Do you want to create a subdomain? (y|n): " is_subdomain
if [[ $is_subdomain != null && $is_subdomain == "y" ]]; then
    read -p "What's the name of your subdomain? " subdomain_name
    bash subs/subdomain.sh $subdomain_name
fi

echo "Setup Finished."