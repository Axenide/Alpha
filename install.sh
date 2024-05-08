#!/bin/bash

# Link this script to .local/bin/alpha unless it already exists
if [ ! -f .local/bin/alpha ]; then
  ln -s $(pwd)/alpha.sh ~/.local/bin/alpha
fi

if [ ! -d "venv" ]; then
  python -m venv venv
fi

# Activate the virtual environment
source venv/bin/activate

# Install requirements
pip install -r requirements.txt

# Exit the virtual environment
deactivate

clear

echo -e "\e[1m\e[31mAlpha\e[0m\e[93m is now available! Use the command '\e[1m\e[31malpha\e[0m\e[93m' to start.\e[0m"
echo ""
