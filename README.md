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
2. `sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/install.sh)";`

### HomeBrew Formulas (OSX)

1. `sh ~/dotfiles/brew/install_brew_list.sh;`
2. `sh ~/dotfiles/brew/install_brew_cask_list.sh;`


## Update

1. `cd ~/dotfiles`
2. `git pull origin master`
3. `sh link.sh`

## only vim

1. 

  * centos
  `sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/vim/setup_centos.sh)";`

  * debian
  `sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/vim/setup_debian.sh)";`

2. `sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/vim/install.sh)";`
