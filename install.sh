#!/bin/bash

# Where is this script located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

#==============
# Remove old dotflies
#==============
sudo rm -rf $HOME/.bashrc > /dev/null 2>&1
sudo rm -rf $HOME/.config/overrides > /dev/null 2>&1
sudo rm -rf $HOME/.config/tmux > /dev/null 2>&1
sudo rm -rf $HOME/.config/zshell > /dev/null 2>&1
sudo rm -rf $HOME/.scripts > /dev/null 2>&1
sudo rm -rf $HOME/.vimrc > /dev/null 2>&1

#==============
# Create symlinks in the home folder
#==============
SYMLINKS=()
ln -sf $SCRIPT_DIR/.bashrc $HOME/.bashrc
SYMLINKS+=('.bashrc')
ln -sf $SCRIPT_DIR/.config/overrides $HOME/.config/overrides
SYMLINKS+=('.config/overrides')
ln -sf $SCRIPT_DIR/.config/tmux $HOME/.config/tmux
SYMLINKS+=('.config/tmux')
ln -sf $SCRIPT_DIR/.config/zshell $HOME/.config/zshell
SYMLINKS+=('.config/zshell')
ln -sf $SCRIPT_DIR/.scripts $HOME/.scripts
SYMLINKS+=('.scripts')
ln -sf $SCRIPT_DIR/.vimrc $HOME/.vimrc
SYMLINKS+=('.vimrc')

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
