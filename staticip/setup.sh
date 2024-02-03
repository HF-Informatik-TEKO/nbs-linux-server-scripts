#!/bin/bash
read -p "Do you really want to change your static IP? (y|n): " is_process
if [[ $is_process == null || $is_process != "y" ]]; then
	exit 0
fi

bash subs/change_ip.sh

echo "Setup Finished" 