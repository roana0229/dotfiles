#!/bin/bash

cd `dirname $0`

for line in `cat brew_list.txt`; do
  if [ `which $line` ]; then 
    brew upgrade $line
  else
    brew install $line
  fi
done

brew cask install `cat brew_cask_list.txt`;