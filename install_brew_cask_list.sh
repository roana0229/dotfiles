#!/bin/bash

echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.zshenv;
echo 'export JAVA_HOME=`/usr/libexec/java_home`' >> ~/.zshenv;
source ~/.zshenv;

brew cask install `cat brew_cask_list.txt`;
