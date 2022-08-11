########## ALIASES ###########
alias ls='ls -G'
alias ll="ls -lhG"
alias la="ls -alhG"
alias cl=clear
alias jnb="jupyter notebook"
# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'
# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'
# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'
# IMO this should not be necessary, but history started acting funny after I
# moved away from oh-my-zsh.  This returns expected behavior.
alias history='history 1'

# Dotfiles for easy access
export PROFILE=$HOME/.profile
export SCRIPTS=$HOME/.scripts
export VIMRC=$HOME/.config/nvim/init.lua
export REPOS=$HOME/repos

# Make sure my scripts are on path
export PATH=$SCRIPTS:$PATH

# FIXME: This runs the subcommands as bash or something, because the history is static and different
# function fh() {
#     local lines cmd
#
#     lines=$(history | sed 's/^ *[0-9\*]* *//')
#     cmd=$(echo $lines | fzf --exact --tac --no-sort --reverse --height 41%)
#
#     [[ -n $cmd ]] && print -z $cmd
# }
alias fh="history | sed 's/^ *[0-9\*]* *//' | fzf --exact --tac --no-sort --reverse --height 41%"
