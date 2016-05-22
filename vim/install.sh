#!/bin/bash

# install neobundle
sh -c "$(curl -fsSL https://raw.github.com/Shougo/neobundle.vim/master/bin/install.sh)";

# create undo history dir
mkdir -p ~/.vim/undo

# clone vim color scheme
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle

