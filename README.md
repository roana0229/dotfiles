# roana0229 dotfiles

## About

Easily to build a minimum of development environment for macOS.

## Install

1. `xcode-select --install`
- `sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/install.sh)";`
- `sh ~/dotfiles/link.sh;`
- `sh ~/dotfiles/brew/install_formula.sh;`

## Setup Vim

- macOS with dein
  - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/vim/setup.sh)";`
- only minimum `.vimrc`
  - `curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/vim/.vimrc_minimum > ~/.vimrc`

## Update

1. `cd ~/dotfiles`
- `git pull origin master`
- `sh ~/dotfiles/link.sh;`
