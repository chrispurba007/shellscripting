#!/bin/bash

# Update package lists
sudo apt update

sudo apt install -y python3 python3-pip python3-venv

# Check if the FLASK_SCRIPT argument is provided
if [ -z "$1" ]; then
    echo "Usage: ./runflask.sh <flask_script>"
    exit 1
fi

FLASK_SCRIPT="$1"

python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

pip install --upgrade pip

# Install Flask
pip install Flask

nano "$FLASK_SCRIPT"

# Run the Flask application
python3 "$FLASK_SCRIPT"
