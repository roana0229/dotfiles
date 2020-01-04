#!/bin/bash -eu

for f in .??*
do
  if [ "$f" == ".git" -o "$f" == ".gitignore" -o "$f" == ".vimrc_minimum" ]; then
    continue
  fi
  ln -sf ~/dotfiles/$f ~/$f
done
