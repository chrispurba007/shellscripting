#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Update package lists
sudo apt update

# Install necessary packages
sudo apt install -y python3 python3-pip python3-venv

# Check if the FLASK_SCRIPT argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <flask_script>"
    exit 1
fi

# Save the parameter as the Flask script name
FLASK_SCRIPT="$1"

# Create a virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Upgrade pip in the virtual environment
pip install --upgrade pip

# Install Flask
pip install Flask

# Open the Flask script in nano
nano "$FLASK_SCRIPT"

# Run the Flask application
python3 "$FLASK_SCRIPT"
