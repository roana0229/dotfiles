#!/bin/bash

ln -sf ~/dotfiles/config.fish ~/.config/fish/config.fish
source ~/.config/fish/config.fish

for f in .??*
do
  if [ "$f" == ".git" -o "$f" == ".gitignore" ]; then
    continue
  fi
  ln -sf ~/dotfiles/$f ~/$f
done
