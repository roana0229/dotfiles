# roana0229 dotfiles

## About

Easily to build a minimum of development environment for macOS.

## Install

1. `xcode-select --install`
- `sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/install.sh)";`
- `sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/vim/setup.sh)";`
- `sh ~/dotfiles/link.sh;`
- `sh ~/dotfiles/brew/install_formula.sh;`

## Setup Vim

- only minimum `.vimrc`
  - `curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/vim/.vimrc_minimum > ~/.vimrc`

## Update

1. `cd ~/dotfiles`
2. `git pull origin master`
3. `sh ~/dotfiles/link.sh;`
