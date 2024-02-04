#!/bin/bash
echo "What welcome script do you want to remove?"
echo "1. Welcome banner"
echo "2. Greet user"
read -p "Input Flag: " is_process

# Abort on null or no number
if [[ -z $is_process || !$is_process =~ ^[0-9]+$ ]]; then
    echo "No number input. Setup cancelled."
    exit 0;
fi

# Welcome
if (($is_process & 1)); then
        bash subs/remove_welcome.sh
fi
# Greeting
if (($is_process & 2)); then
        bash subs/remove_greeting.sh
fi

echo "Remove Finished"