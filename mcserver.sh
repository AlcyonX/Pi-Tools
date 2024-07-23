#!/bin/bash

echo "Welcome on MCSERVER.SH from PI TOOLS ! "

echo "Please select a procedure : install, remove or help"
read choice

if ["$choice" == "install"]; then

  echo "Please select a minecraft version : "

  cd
  sudo apt update
  sudo apt upgrade
  sudo apt install default-jre
  mkdir Minecraft
  cd Minecraft
  
  read choice

  if ["$choice" == "1.8.9"] then

    wget https://launcher.mojang.com/v1/objects/b58b2ceb36e01bcd8dbf49c8fb66c55a9f0676cd/server.jar

    echo "Success ! "
    exit 1
    
    else
    echo "This minecraft version is unsupported..."
    exit 1
    
  fi

  elif ["$choice" == "remove"]; then

  cd
  rm -rf Minecraft
  echo "Success ! "
  exit 1

  elif ["$choice" == "help"]; then

    echo "Help : "
    echo "install : Install and run an new mincraft server"  
    echo "remove : Remove the current minecraft server"
    exit 1
    
  else

  echo "Please choose a valid option."
  exit 1
  
fi
