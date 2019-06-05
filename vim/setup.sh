#!/bin/bash -eux

# install dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/installer.sh;
mkdir -p ~/.vim/bundle;
sh ~/installer.sh ~/.vim/bundle;
rm -f ~/installer.sh;
