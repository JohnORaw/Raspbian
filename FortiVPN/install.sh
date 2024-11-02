#!/bin/bash
# By: John O'Raw
# Date: 02NOV24
# Function: install prereqs for this project
# Script: install.sh

# Install rpiconnect, CLI only
sudo apt install rpi-connect-lite
rpi-connect on
rpi-connect signin
loginctl enable-linger

# Update and upgrade before starting
sudo apt update
sudo apt upgrade -y
# Install Strongswan
sudo apt install strongswan -y
