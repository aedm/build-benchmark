#!/bin/bash

# This script installs build toolchains on a fresh Ubuntu instance. 

set -x

# Adds Node.js 16.x to apt sources
sudo curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
sudo apt update

# Basics
sudo apt install build-essential -y

# Prevent WSL to inherit Windows %PATH%
sudo echo """
[interop]
appendWindowsPath=false
""" >>/etc/wsl.conf

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.59.0

# Install Go
sudo rm -rf /usr/local/go 
sudo curl -L https://go.dev/dl/go1.17.5.linux-amd64.tar.gz | sudo tar -C /usr/local -xz
echo 'PATH="$PATH:/usr/local/go/bin"' >>$HOME/.bashrc

# Install Java 11
sudo apt install openjdk-11-jdk -y

# Install Node.js
sudo apt install nodejs -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
set +x
. ~/.nvm/nvm.sh
sudo nvm install 16.13.1
sudo npm install --global yarn@1.22.17