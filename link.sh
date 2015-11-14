#!/bin/bash

ln -sf ~/dotfiles/.zshenv ~/.zshenv
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

source ~/.zshenv;
source ~/.zshrc;
source ~/.vimrc;
source ~/.gitconfig;
