# roana0229 dotfiles

## About

Easily to build a minimum of development environment for mac and linux.


## Features

* zsh
* oh-my-zsh
* git
* tig
* tmux
* color-scheme, neobundle (vim)
* vim with lua


## Install

### Base

1. If you install for Mac, `xcode-select --install` after show dialog.
2. `sh -c "$(curl -fsSL https://rawgit.com/roana0229/dotfiles/master/install.sh)";`

### HomeBrew Formulas (OSX)

1. `sh install_brew_list.sh;`
2. `sh install_brew_cask_list.sh;`


## Update

1. `cd ~/dotfiles`
2. `git pull origin master`
3. `sudo sh link.sh`

## vim only for linux

`sh -c "$(curl -fsSL https://rawgit.com/roana0229/dotfiles/master/install_vim_for_linux.sh)";`
