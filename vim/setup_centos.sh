#!/bin/bash

yum check-update;
yum install -y vim-nox git;

# clone vimrc on system wide
curl "https://raw.githubusercontent.com/roana0229/dotfiles/master/.vimrc" > /etc/vimrc
