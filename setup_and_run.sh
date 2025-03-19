#!/bin/bash

# Exit immediately if a command fails
set -e

echo "Installing Verilator..."
sudo apt update
sudo apt install verilator -y
which verilator
verilator --version

echo "Installing GTKWave..."
sudo apt install gtkwave -y
which gtkwave
gtkwave --version

echo "Installing Prerequisites..."
sudo apt-get install -y \
    git help2man perl python3 make autoconf g++ flex bison ccache \
    libgoogle-perftools-dev numactl perl-doc libfl2 libfl-dev \
    zlib1g zlib1g-dev python3-pip build-essential libssl-dev \
    libffi-dev python3-dev python3-venv

echo "Extracting virtual environment..."
tar xzf venv.tar.gz
rm venv.tar.gz

# Replace placeholder username in virtual environment
HOST_USERNAME=$(whoami)
find ~/venv/ -type f -exec sed -i "s/_HOST_USERNAME_/$HOST_USERNAME/g" {} +
grep -rl "_HOST_USERNAME_" ~/venv/ || echo "Username replacement verified."

# Activate virtual environment
source ~/venv/bin/activate

# Navigate to example directory and make scripts executable
cd example
sudo chmod +x *

echo "Running ALU testbench..."
./ALU.py

echo "Start WaveForm..."
gtkwave *.vcd 