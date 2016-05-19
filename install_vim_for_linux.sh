#!/bin/bash

yum check-update;
yum update;
yum install -y vim-nox git;

# install neobundle
sh -c "$(curl -fsSL https://raw.github.com/Shougo/neobundle.vim/master/bin/install.sh)";

# create undo history dir
mkdir -p ~/.vim/undo

# clone vim color scheme
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle

# clone vimrc on system wide
curl "https://raw.githubusercontent.com/roana0229/dotfiles/master/.vimrc" > /etc/vimrc
