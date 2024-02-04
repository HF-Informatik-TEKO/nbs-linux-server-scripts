#!/bin/bash
echo "What do you want to change about the welcome banner?"
echo "1. Manually edit banner"
echo "2. Replace it with a existing file"
read -p "Flag: " is_process

# Abort on null or no number
if [[ -z $is_process || !$is_process =~ ^[0-9]+$ ]]; then
    echo "No number input. Setup cancelled."
    exit 0;
fi

# Edit
if (($is_process & 1)); then
    sudo nano /etc/profile.d/ascii_art/welcome.txt
fi
# Replace
if (($is_process & 2)); then
    read -p "Whats the new file path? (absolut path)" new_banner_path
    sudo cp $new_banner_path /etc/profile.d/ascii_art/welcome.txt
fi
