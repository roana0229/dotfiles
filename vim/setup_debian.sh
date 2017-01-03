#!/bin/bash

apt-get update;
apt-get upgrade;
apt-get dist-upgrade;
apt-get install vim-enhanced git;

curl "https://raw.githubusercontent.com/roana0229/dotfiles/master/.vimrc" > ~/.vimrc
