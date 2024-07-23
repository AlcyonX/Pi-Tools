#!/bin/bash

echo "Welcome on MCSERVER.SH from PI TOOLS ! "

if [ -z "$1" ]; then
  echo "Please give the minecraft version that you want to install. "
  exit 1
fi

function update {
  sudo apt update
  sudo apt upgrade
  sudo apt install default-jre
}

if [ "$1" == "1.8" ]; then
  echo "Installing..."

  update

  wget https://launcher.mojang.com/v1/objects/b58b2ceb36e01bcd8dbf49c8fb66c55a9f0676cd/server.jar

  echo "success"
  
  
else
  echo "This minecraft version is unsupported..."
fi
