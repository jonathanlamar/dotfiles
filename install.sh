#!/bin/bash

# Where is this script located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

#==============
# Remove old dotflies
#==============
sudo rm -rf $HOME/.bashrc > /dev/null 2>&1
sudo rm -rf $HOME/.config/alacritty > /dev/null 2>&1
sudo rm -rf $HOME/.config/flake8 > /dev/null 2>&1
sudo rm -rf $HOME/.config/htop > /dev/null 2>&1
sudo rm -rf $HOME/.config/overrides > /dev/null 2>&1
sudo rm -rf $HOME/.config/ranger > /dev/null 2>&1
sudo rm -rf $HOME/.config/tmux > /dev/null 2>&1
sudo rm -rf $HOME/.config/zshell > /dev/null 2>&1
sudo rm -rf $HOME/.ctags > /dev/null 2>&1
sudo rm -rf $HOME/.profile > /dev/null 2>&1
sudo rm -rf $HOME/.scripts > /dev/null 2>&1
sudo rm -rf $HOME/.zshrc > /dev/null 2>&1
sudo rm -rf $HOME/.zprofile > /dev/null 2>&1

#==============
# Create symlinks in the home folder
#==============
SYMLINKS=()
ln -sf $SCRIPT_DIR/.bashrc $HOME/.bashrc
SYMLINKS+=('.bashrc')
ln -sf $SCRIPT_DIR/.config/alacritty $HOME/.config/alacritty
SYMLINKS+=('.config/alacritty')
ln -sf $SCRIPT_DIR/.config/flake8 $HOME/.config/flake8
SYMLINKS+=('.config/flake8')
ln -sf $SCRIPT_DIR/.config/htop $HOME/.config/htop
SYMLINKS+=('.config/htop')
ln -sf $SCRIPT_DIR/.config/ranger $HOME/.config/ranger
SYMLINKS+=('.config/overrides')
ln -sf $SCRIPT_DIR/.config/overrides $HOME/.config/overrides
SYMLINKS+=('.config/ranger')
ln -sf $SCRIPT_DIR/.config/tmux $HOME/.config/tmux
SYMLINKS+=('.config/tmux')
ln -sf $SCRIPT_DIR/.config/zshell $HOME/.config/zshell
SYMLINKS+=('.config/zshell')
ln -sf $SCRIPT_DIR/.ctags $HOME/.ctags
SYMLINKS+=('.ctags')
ln -sf $SCRIPT_DIR/.profile $HOME/.profile
SYMLINKS+=('.profile')
ln -sf $SCRIPT_DIR/.scripts $HOME/.scripts
SYMLINKS+=('.scripts')
ln -sf $SCRIPT_DIR/.zprofile $HOME/.zprofile
SYMLINKS+=('.zprofile')

echo "Created the following symlinks in $HOME:"
echo ${SYMLINKS[@]}

#==============
# Install tpm
#==============
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

#==============
# And we are done
#==============
echo -e "\n====== All Done!! ======\n"
