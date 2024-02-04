#!/bin/bash
echo "Welcome to the ubuntu-server setup wizard."
echo "You can use flags to select multiple choices. (All = 63, LAMP = 14)"
echo "What do you want to do?"
echo " 2: Setup webserver apache2"
echo " 4: Setup database mysql-server"
echo " 8: Setup language php"
echo "16: Setup scripts to welcome users"
echo "32: Setup logging"
read -p "Flag: " is_process

# Abort on null or no number
# Has only one or many digit number(s)
if [[ -z $is_process || !$is_process =~ ^[0-9]+$ ]]; then
    echo "No number input. Setup cancelled."
    exit 0;
fi

# Setup apache2
if (($is_process & 2)); then
    cd apache
	bash setup.sh
    cd ..
fi
# Setup mysql
if (($is_process & 4)); then
    cd mysql
	bash setup.sh
    cd ..
fi
# Setup php
if (($is_process & 8)); then
    cd php
	bash setup.sh
    cd ..
fi
# Setup welcome scripts
if (($is_process & 16)); then
    cd welcome
	bash setup.sh
    cd ..
fi
# Setup logging
if (($is_process & 32)); then
    cd logging
	bash setup.sh
    cd ..
fi

echo "Setup Finished"