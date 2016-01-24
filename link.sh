#!/bin/bash

ln -sf ~/dotfiles/.zshenv ~/.zshenv
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.eslintrc ~/.eslintrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

source ~/.zshenv;
source ~/.zshrc;
source ~/.vimrc;
source ~/.eslintrc;
source ~/.tmux.conf;
source ~/.gitconfig;
