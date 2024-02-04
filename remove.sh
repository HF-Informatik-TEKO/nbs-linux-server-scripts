#!/bin/bash
echo "Welcome to the ubuntu-server remove wizard."
echo "You can use flags to select multiple choices. (All = 31, LAMP = 7)"
echo "What do you want to do?"
echo " 1: Remove webserver apache2"
echo " 2: Remove database mysql-server"
echo " 4: Remove language php"
echo " 8: Remove scripts to welcome users"
echo "16: Remove logging"
read -p "Flag: " is_process

# Abort on null or no number
# Has only one or many digit number(s)
if [[ -z $is_process || !$is_process =~ ^[0-9]+$ ]]; then
    echo "No number input. Remove cancelled."
    exit 0;
fi

# Remove apache2
if (($is_process & 1)); then
    cd apache
	bash remove.sh
    cd ..
fi
# Remove mysql
if (($is_process & 2)); then
    cd mysql
	bash remove.sh
    cd ..
fi
# Remove php
if (($is_process & 4)); then
    cd php
	bash remove.sh
    cd ..
fi
# Remove welcome scripts
if (($is_process & 8)); then
    cd welcome
	bash remove.sh
    cd ..
fi
# Remove logging
if (($is_process & 16)); then
    cd logging
	bash remove.sh
    cd ..
fi

echo "Remove Finished"