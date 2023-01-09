#!/bin/bash

# Set default values
FIVEM_DIR=~/fivem
INSTALL_DEPS=true

# Parse command line arguments
while [[ $# -gt 0 ]]
do
  key="$1"

  case $key in
    -d|--dir)
      FIVEM_DIR="$2"
      shift
      shift
      ;;
    -n|--no-deps)
      INSTALL_DEPS=false
      shift
      ;;
    *)
      shift
      ;;
  esac
done

# Create the FiveM directory if it doesn't exist
if [ ! -d "$FIVEM_DIR" ]; then
  mkdir -p "$FIVEM_DIR"
fi

# Change to the FiveM directory
cd "$FIVEM_DIR"

# Update package lists
apt update

if [ "$INSTALL_DEPS" = true ] ; then
  # Install dependencies
  apt install -y git
fi

# Clone the FiveM repository
git clone https://github.com/citizenfx/fivem.git .

# Check for errors
if [ $? -ne 0 ]; then
  echo "Error: Failed to clone the FiveM repository."
  exit 1
fi

# Install FiveM
./fivem.sh

# Check for errors
if [ $? -ne 0 ]; then
  echo "Error: Failed to install FiveM."
  exit 1
fi

echo "FiveM has been successfully installed to $FIVEM_DIR"
