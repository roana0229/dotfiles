#!/bin/bash -eux

for f in .??*
do
  if [ "$f" == ".git" -o "$f" == ".gitignore" ]; then
    continue
  fi
  ln -sf ~/dotfiles/$f ~/$f
done
