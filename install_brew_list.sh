#!/bin/bash

echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.zshenv;
source ~/.zshenv;

brew install `cat brew_list.txt`;
