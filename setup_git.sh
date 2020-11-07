#!/bin/bash

read -p "git config --global user.name > " NAME
read -p "git config --global user.email > " EMAIL

set -eux

git config --global user.name $NAME
git config --global user.email $EMAIL
git config --global core.editor vim
curl -sLw "\n" https://www.gitignore.io/api/macos > ~/.gitignore_global
git config --global core.excludesFile ~/.gitignore_global