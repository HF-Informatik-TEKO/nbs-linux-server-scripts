#!/bin/bash
# Make ascii art folder, if not existent
sudo mkdir -p /etc/profile.d/ascii_art/

# Copy welcome banner
sudo cp subs/welcome.txt /etc/profile.d/ascii_art/welcome.txt

# Make script work on user login
sudo cp subs/welcome.sh /etc/profile.d/010-welcome.sh