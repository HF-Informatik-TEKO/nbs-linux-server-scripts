#!/bin/bash
echo "WARNING! changing static ip via ssh will lead to a disconnect."
read -p "Do you really want to change your static IP? (y|n): " is_process
if [[ $is_process == null || $is_process != "y" ]]; then
	exit 0
fi

# Change static ip
bash subs/change_ip.sh

echo "Change Finished" 