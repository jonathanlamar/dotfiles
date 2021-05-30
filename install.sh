#!/bin/bash

# Where is this script located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

#==============
# Remove old dot flies
#==============
sudo rm -rf $HOME/.bashrc > /dev/null 2>&1
sudo rm -rf $HOME/.config/alacritty > /dev/null 2>&1
sudo rm -rf $HOME/.config/htop > /dev/null 2>&1
sudo rm -rf $HOME/.config/ranger > /dev/null 2>&1
sudo rm -rf $HOME/.config/tmux > /dev/null 2>&1
sudo rm -rf $HOME/.ctags > /dev/null 2>&1
sudo rm -rf $HOME/.profile > /dev/null 2>&1
sudo rm -rf $HOME/.scripts > /dev/null 2>&1
sudo rm -rf $HOME/.zshrc > /dev/null 2>&1

#==============
# Create symlinks in the home folder
# Allow overriding with files of matching names in the custom-configs dir
#==============
SYMLINKS=()
ln -sf $SCRIPT_DIR/.bashrc $HOME/.bashrc
SYMLINKS+=('.bashrc')
ln -sf $SCRIPT_DIR/config/alacritty $HOME/.config/alacritty
SYMLINKS+=('.config/alacritty')
ln -sf $SCRIPT_DIR/config/htop $HOME/.config/htop
SYMLINKS+=('.config/htop')
ln -sf $SCRIPT_DIR/config/ranger $HOME/.config/ranger
SYMLINKS+=('.config/ranger')
ln -sf $SCRIPT_DIR/.config/tmux $HOME/.config/tmux
SYMLINKS+=('.config/tmux')
ln -sf $SCRIPT_DIR/.ctags $HOME/.ctags
SYMLINKS+=('.ctags')
ln -sf $SCRIPT_DIR/.profile $HOME/.profile
SYMLINKS+=('.profile')
ln -sf $SCRIPT_DIR/.scripts $HOME/.scripts
SYMLINKS+=('.scripts')
ln -sf $SCRIPT_DIR/.zshrc $HOME/.zshrc
SYMLINKS+=('.zshrc')

echo ${SYMLINKS[@]}

#==============
# Install oh-my-zsh
#==============
if [ -d $HOME/.oh-my-zsh ]
then
    echo "$HOME/.oh-my-zsh found.  Deleting it."
    rm -rf $HOME/.oh-my-zsh
fi

git clone https://github.com/ohmyzsh/ohmyzsh.git $HOME/.oh-my-zsh

# Place custom theme in correct location
ln -sf $SCRIPT_DIR/mine.zsh-theme $HOME/.oh-my-zsh/custom/themes/mine.zsh-theme

#==============
# Install tpm
#==============
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

#==============
# And we are done
#==============
echo -e "\n====== All Done!! ======\n"
