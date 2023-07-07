#!/bin/bash

# Install Python's virtual environment package
sudo apt update
sudo apt install python3-venv -y

# Create a new directory for the virtual environment and navigate to it
mkdir awscli-env
cd awscli-env

# Create a new Python virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install the AWS CLI
pip install awscli

# Verify the installation
aws --version

# Deactivate the virtual environment
deactivate
