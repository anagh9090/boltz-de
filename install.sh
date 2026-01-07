#!/bin/bash

# Define colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}==>${NC} Preparing to install Boltz-DE..."

# 1. Update package list and install software-properties-common if missing
sudo apt update -qq
sudo apt install -y software-properties-common > /dev/null 2>&1

# 2. Add your PPA (-y skips the "Press Enter" prompt)
echo -e "${BLUE}==>${NC} Adding PPA: anagh9090/boltz-de"
sudo add-apt-repository -y ppa:anagh9090/boltz-de

# 3. Update again after adding PPA
echo -e "${BLUE}==>${NC} Updating package lists..."
sudo apt update -qq

# 4. Install the package
echo -e "${BLUE}==>${NC} Installing boltz-de..."
sudo apt install -y boltz-de

echo -e "${GREEN}==> Installation complete!${NC}"
