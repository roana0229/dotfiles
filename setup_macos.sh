#!/bin/bash -eux

if [ "$(uname)" != 'Darwin' ]; then # macOS
  echo "# This script can be run only on macOS";
  exit 1;
fi

/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/install/master/install)";
brew update;
brew doctor;
brew install reattach-to-user-namespace caskroom/cask/brew-cask;

git clone git@github.com:roana0229/dotfiles.git ~/dotfiles;
sh ~/dotfiles/link.sh;
sh ~/dotfiles/brew/install_formula.sh;

git clone https://github.com/tomislav/osx-terminal.app-colors-solarized ~/dotfiles/osx-terminal.app-colors-solarized;
echo "You must load 'color-solarized' in ~/dotfiles/osx-terminal.app-colors-solarized at Terminal Setting";

cat << EOS
                           _      _           _ 
  ___ ___  _ __ ___  _ __ | | ___| |_ ___  __| |
 / __/ _ \| '_ \` _ \| '_ \| |/ _ \ __/ _ \/ _\` |
| (_| (_) | | | | | | |_) | |  __/ ||  __/ (_| |
 \___\___/|_| |_| |_| .__/|_|\___|\__\___|\__,_|
                    |_|                         
EOS