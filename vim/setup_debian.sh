#!/bin/bash

apt-get update;
apt-get upgrade;
apt-get dist-upgrade;
apt-get install vim-nox git;

# clone vimrc on system wide
curl "https://raw.githubusercontent.com/roana0229/dotfiles/master/.vimrc" > /etc/vim/vimrc
