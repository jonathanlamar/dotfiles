#!/bin/sh

# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments

# completions
autoload -Uz compinit
zstyle ':completion:*' menu select
# zstyle ':completion::complete:lsof:*' menu yes select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Colors
autoload -Uz colors && colors

# Useful Functions
source "$ZDOTDIR/zsh-functions"

zsh_add_file "zsh-prompt"

# Plugins
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
# For more plugins: https://github.com/unixorn/awesome-zsh-plugins
# More completions https://github.com/zsh-users/zsh-completions

alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"

# Enable pip completion.  It's a special case
# eval "`pip3 completion --zsh`"

########## ALIASES ###########
alias ls='ls -G'
alias ll="ls -lhG"
alias la="ls -alhG"
alias cl=clear
# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'
# IMO this should not be necessary, but history started acting funny after I
# moved away from oh-my-zsh.  This returns expected behavior.
alias history='history 1'
alias fh="history | sed 's/^ *[0-9\*]* *//' | fzf --exact --tac --no-sort --reverse --height 41%"

export PATH=$HOME/.scripts:$PATH

# Store zsh config specific to computer in this untracked file
[[ -f ~/.config/overrides/.zshrc ]] && . ~/.config/overrides/.zshrc
