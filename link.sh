#!/bin/bash

for f in .??*
do
  if [ "$f" == ".git" -o "$f" == ".gitignore" ]; then
    continue
  fi

  ln -sf ~/dotfiles/$f ~/$f
  if [ "$f" == ".zshenv" -o "$f" == ".zshrc" ]; then
    source ~/$f;
  fi
done
