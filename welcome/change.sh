#!/bin/bash
echo "What do you want to change about the welcome scripts?"
echo "1. Welcome banner"
read -p "Flag: " is_process

# Abort on null or no number
if [[ -z $is_process || !$is_process =~ ^[0-9]+$ ]]; then
    echo "No number input. Setup cancelled."
    exit 0;
fi

# Welcome banner
if (($is_process & 1)); then
    bash subs/change_welcome_banner.sh
fi

echo "Setup Finished"