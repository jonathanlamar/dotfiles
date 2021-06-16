alias ll="ls -lhG"
alias la="ls -alhG"
alias vim="nvim"
alias cl=clear
alias jnb="jupyter notebook"

# Dotfiles for easy access
export PROFILE=$HOME/.profile
export SCRIPTS=$HOME/.scripts
export VIMRC=$HOME/.config/nvim/init.vim
export REPOS=$HOME/repos

# Make sure my scripts are on path
export PATH=$SCRIPTS:$PATH

# FIXME: This needs to be a function because a script can't find bash history
# for some reason.
function fh() {
    local lines cmd

    lines=$(history | sed 's/^ *[0-9\*]* *//')
    cmd=$(echo $lines | fzf --reverse --height 40%)

    [[ -n $cmd ]] && eval $cmd
}

# FIXME: This also won't work as a script, but I do not know why
function fbr() {
    local branches branch

    branches=$(git branch) &&
    branch=$(echo "$branches" | fzf --reverse --height 40%) &&

    git checkout $(echo "$branch" | sed "s:.* remotes/origin/::" | sed "s:.* ::")
}
