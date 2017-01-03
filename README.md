# roana0229 dotfiles

## About

Easily to build a minimum of development environment for macOS.

## Install

1. `xcode-select --install`
- `sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/install.sh)";`
- `sh ~/dotfiles/link.sh;`
- `sh ~/dotfiles/brew/install_brew_list.sh;`
- `sh ~/dotfiles/brew/install_brew_cask_list.sh;`

## Setup Vim

- macOS
  - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/vim/setup.sh)";`
- CentOS
  - `sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/vim/setup_centos.sh)";`
  - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/vim/setup.sh)";`
- Debian
  - `sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/vim/setup_debian.sh)";`
  - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/vim/setup.sh)";`

After execute command `vim` and Install NeoBundle Plugin.

## Update

1. `cd ~/dotfiles`
- `git pull origin master`
- `sh ~/dotfiles/link.sh;`
