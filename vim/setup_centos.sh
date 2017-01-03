#!/bin/bash

yum check-update;
yum install -y vim-nox git;

curl "https://raw.githubusercontent.com/roana0229/dotfiles/master/.vimrc" > ~/.vimrc
