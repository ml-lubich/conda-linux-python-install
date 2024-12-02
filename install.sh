#!/bin/bash

# Step 1: Download and install Miniconda
echo "Downloading Miniconda..."
wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh

echo "Installing Miniconda..."
bash miniconda.sh -b -p $HOME/miniconda

# Step 2: Add Miniconda to PATH
echo "Configuring environment to include Miniconda..."
export PATH="$HOME/miniconda/bin:$PATH"

# Ensure `conda` is available in the current session
echo "Initializing conda..."
source $HOME/miniconda/etc/profile.d/conda.sh
conda init bash

# Step 3: Install Python 3.11 in a new environment
echo "Creating Python 3.11 environment..."
conda create -n py311 python=3.11 -y

# Activate the new environment
echo "Activating Python 3.11 environment..."
conda activate py311

# Display Python version to verify installation
echo "Python version installed:"
python --version

# Cleanup
echo "Cleaning up installer..."
rm -f miniconda.sh

echo "Installation complete. Use 'conda activate py311' to activate your Python 3.11 environment."
