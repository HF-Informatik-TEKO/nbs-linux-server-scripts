#!/bin/bash
echo "What welcome script do you want to remove?"
echo "1. welcome banner"
echo "2. greet user"
read -p "Input Flag: " is_process

if (($is_process & 1)); then
        bash subs/remove_welcome.sh
fi

if (($is_process & 2)); then
        bash subs/remove_greeting.sh
fi

echo "Setup Finished"