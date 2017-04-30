#!/bin/bash

# install dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh;
sh ./installer.sh ~/.vim/bundle;
rm -f ./installer.sh
