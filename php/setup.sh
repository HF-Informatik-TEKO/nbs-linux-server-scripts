#!/bin/bash
# Install php
read -p "Do you really want to install PHP? (y|n): " is_process
if [[ $is_process == null || $is_process != "y" ]]; then
	exit 0
fi
bash subs/install.sh

echo "Setup Finished" 