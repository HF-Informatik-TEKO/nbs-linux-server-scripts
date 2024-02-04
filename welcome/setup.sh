#!/bin/bash
echo "What welcome script do you want to install?"
echo "1. greet user"
echo "2. welcome banner"
read -p "Flag: " is_process

# Abort on null or no number
if [[ -z $is_process || !$is_process =~ ^[0-9]+$ ]]; then
    echo "No number input. Setup cancelled."
    exit 0;
fi

if (($is_process & 1)); then
	bash subs/setup_greeting.sh
fi

if (($is_process & 2)); then
	bash subs/setup_welcome.sh
fi

echo "Setup Finished"