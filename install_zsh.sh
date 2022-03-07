#!/bin/bash

#Author: Giuseppe Marcello Guarino
#Creation Date: 07.03.2020
#Licence: GPL-3

# Script to install zsh

SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"

echo "#####################################################"
echo "installing zsh"
echo "#####################################################"

sudo apt update
sudo apt install -y zsh


echo "#####################################################"
echo " Install oh-my-zsh and required tools and fonts"
echo "#####################################################"

sudo apt install git-core curl fonts-powerline
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


echo "#####################################################"
echo " Install zsh-syntax-highlighting"
echo "#####################################################"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


echo "#####################################################"
echo "Add 'zsh-syntax-highlighting' to plugins array in ~/.zshrc"
echo "If needed change ZSH_THEME to 'agnoster' in ~/.zshrc"
echo "#####################################################"


echo "#####################################################"
echo "Setting up zsh as default shell"
echo "#####################################################"
sudo chsh -s /bin/zsh $USER

echo "#####################################################"
echo "Setup neofetch and aliases for zsh"
echo "#####################################################"

sudo apt install neofetch

if [ ! -d "~/.config/neofetch" ]; then
  mkdir ~/.config/neofetch
fi

cp $SCRIPT_PATH/invader.txt ~/.config/neofetch/invader.txt

cp $SCRIPT_PATH/.zshrc ~/.zshrc

echo "#####################################################"
echo "DONE"
