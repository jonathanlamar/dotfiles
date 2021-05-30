#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Just source .profile
[[ -f ~/.profile ]] && . ~/.profile

# Store zsh config specific to computer in this untracked file
[[ -f ~/.this_computer_profile && . ~/.this_computer_profile ]]
