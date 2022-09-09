#!/bin/bash

#Author: WhosStranger

#Colors
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

echo -e "\n${yellowColour}[!]${endColour} ${purpleColour}By WhosStranger${endColour}\n"


function root(){  

  test -f /usr/bin/nvim
  if [ "$(echo $?)" == "0" ]; then
    echo -e "\n${yellowColour}[*]${endColour} ${purpleColour}Nvim Installed${endColour} ${greenColour}(V)${endColour} \n"
    rm -rf ~/.local/share/nvim
    rm -rf ~/.config/nvim
    apt-get --purge remove neovim -y > /dev/null 2>&1
    wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb > /dev/null 2>&1
    apt install ./nvim-linux64.deb > /dev/null 2>&1
    git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 > /dev/null 2>&1

  else
    echo -e "\n${yellowColour}[x]${endColour} ${purpleColour}Nvim not Installed${endColour} ${redColour}(X)${endColour}"
    wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb > /dev/null 2>&1
    apt install ./nvim-linux64.deb > /dev/null 2>&1
    git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 > /dev/null 2>&1

  fi
}

function user(){

  test -f /usr/bin/nvim
  if [ "$(echo $?)" == "0" ]; then
    echo -e "\n${yellowColour}[*]${endColour} ${purpleColour}Nvim Installed.${endColour} ${greenColour}(V)${endColour} \n"
    sudo rm -rf ~/.local/share/nvim
    sudo rm -rf ~/.config/nvim
    sudo apt-get --purge remove neovim -y > /dev/null 2>&1
    wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb > /dev/null 2>&1
    sudo apt install ./nvim-linux64.deb > /dev/null 2>&1
    git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim > /dev/null 2>&1

  else
    echo -e "\n${yellowColour}[x]${endColour} ${purpleColour}Nvim not Installed.${endColour} ${redColour}(X)${endColour}"
    wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb > /dev/null 2>&1
    sudo apt install ./nvim-linux64.deb > /dev/null 2>&1
    git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 > /dev/null 2>&1

  fi
}

#Funcion Principal

if [ "$(id -u)" == "0" ]; then
  echo -e "\n${yellowColour}[!]${endColour} ${purpleColour}Remember to run it as both user and root.${endColour}"
  root
else 
  echo -e "\n${yellowColour}[!]${endColour} ${purpleColour}Remember to run it as both user and root.${endColour}"
  user
fi

