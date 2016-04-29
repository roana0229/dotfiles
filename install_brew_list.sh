#!/bin/bash

brew install `cat brew_list.txt`;

echo "export PATH=\$HOME/.nodebrew/current/bin:\$PATH" >> ~/.zshenv;
source ~/.zshenv;
echo "export EDITOR='vim'" >> ~/.zshrc;
echo "eval '\$(direnv hook zsh)'" >> ~/.zshrc;
source ~/.zshrc;
