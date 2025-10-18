#!/bin/bash

# Update package lists
sudo apt update -y

# Install PHP
echo "Installing PHP..."
sudo apt install -y php

# Install xterm
echo "Installing xterm..."
sudo apt install -y xterm

# Install ngrok
echo "Installing ngrok..."
# Download the latest ngrok release
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip

# Unzip and move to /usr/local/bin
unzip ngrok.zip
sudo mv ngrok /usr/local/bin/
sudo chmod +x /usr/local/bin/ngrok

# Clean up
rm ngrok.zip

# Confirm installations
echo "Verifying installations..."
php -v
xterm -version
ngrok version

echo "✅ All dependencies installed successfully!"
