#!/bin/bash
echo "Welcome to the ubuntu-server remove wizard."
echo "You can use flags to select multiple choices. (All = 63, LAMP = 14)"
echo "What do you want to do?"
echo " 1: Change ip-address (static) on current config"
echo " 2: remove webserver apache2"
echo " 4: Remove database mysql-server"
echo " 8: Remove language php"
echo "16: Remove scripts to welcome users"
echo "32: Remove logging"
read -p "Flag: " is_process

# Abort on null or no number
# Has only one or many digit number(s)
if [[ -z $is_process || !$is_process =~ ^[0-9]+$ ]]; then
    echo "No number input. Remove cancelled."
    exit 0;
fi

# Change ip-address
if (($is_process & 1)); then
    cd staticip
	bash remove.sh
    cd ..
fi
# Remove apache2
if (($is_process & 2)); then
    cd apache
	bash remove.sh
    cd ..
fi
# Remove mysql
if (($is_process & 4)); then
    cd mysql
	bash remove.sh
    cd ..
fi
# Remove php
if (($is_process & 8)); then
    cd php
	bash remove.sh
    cd ..
fi
# Remove welcome scripts
if (($is_process & 16)); then
    cd welcome
	bash remove.sh
    cd ..
fi
# Remove logging
if (($is_process & 32)); then
    cd logging
	bash remove.sh
    cd ..
fi

echo "Remove Finished"