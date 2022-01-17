# Dotfiles

Version 2 - This is meant to be Mac specific and specifically _excludes_ my
neovim config (see [here](https://github.com/jonathanlamar/nvim) for that).
Although, this should generalize to linux with minor changes.

Some of the minimalist zshell config were cloned directly from
[Chris@Machine's machfiles repo](https://github.com/ChristianChiarulli/Machfiles).

## How to install

1. Clone wherever you want.
2. Back up your dotfiles.
3. Put any bash/zshell rc contents specific to **your** computer in
   `~/.config/overrides/.profile`.
4. Put any special alacritty config specific to your computer in
   `~/.config/overrides/alacritty.yml`.
4. Run `./install.sh`.  The files in this repo will be symlinked to your home
   folder.  It is up to you to install the programs and their dependencies.

## Dependencies

This may not be a complete list.

* zshell
* fzf
* exuberant ctags
* ranger
* alacritty
* htop
* [Hack Nerd Font](https://www.nerdfonts.com/font-downloads)
