#!/bin/bash

echo "Welcome on MCSERVER.SH from PI TOOLS ! "

if [ -z "$1" ]; then
  echo "Please give the minecraft version that you want to install. "
  exit 1
fi

function update {
  sudo apt update
  sudo apt upgrade -y
}

if [ "$1" == "1.21" ]; then
  echo "Installing..."

  update

  echo "success"
  
  
else
  echo "This minecraft version is unsupported..."
fi
