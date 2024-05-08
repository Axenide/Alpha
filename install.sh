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
pip install -r requirements.txt --quiet

# Exit the virtual environment
deactivate
