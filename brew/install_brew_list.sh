#!/bin/bash

cd `dirname $0`
brew install `cat brew_list.txt`;
brew cask install `cat brew_cask_list.txt`;
