#!/bin/bash

# This script installs build toolchains on a fresh Ubuntu instance. 
# Run it with sudo.

set -x

# Adds Node.js 16.x to apt sources
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
apt update

# Basics
sudo apt install build-essential -y

# Prevent WSL to inherit Windows %PATH%
echo """
[interop]
appendWindowsPath=false
""" >>/etc/wsl.conf

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.59.0

# Install Go
rm -rf /usr/local/go 
curl -L https://go.dev/dl/go1.17.5.linux-amd64.tar.gz | tar -C /usr/local -xz
echo 'PATH="$PATH:/usr/local/go/bin"' >>$HOME/.bashrc

# Install Java 11
apt install openjdk-11-jdk -y

# Install Node.js
apt install nodejs -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
set +x
. ~/.nvm/nvm.sh
nvm install 16.13.1
npm install --global yarn@1.22.17