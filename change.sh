#!/bin/bash
echo "Welcome to the ubuntu-server change wizard."
echo "You can use flags to select multiple choices. "
echo "What do you want to do?"
echo "1: Change ip-address (static) on current config"
echo "2: Change user welcome banner"
echo "4: Change logging"
read -p "Flag: " is_process

# Abort on null or no number
# Has only one or many digit number(s)
if [[ -z $is_process || !$is_process =~ ^[0-9]+$ ]]; then
    echo "No number input. Setup cancelled."
    exit 0;
fi

# Change ip-address
if (($is_process & 1)); then
    cd staticip
	bash change.sh
    cd ..
fi
# Change user welcome banner
if (($is_process & 2)); then
    cd welcome
	bash change.sh
    cd ..
fi
# View logs
if (($is_process & 4)); then
    cd logging
	bash change.sh
    cd ..
fi

echo "Setup Finished"