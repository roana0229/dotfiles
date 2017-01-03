#!/bin/bash

if [ "$(uname)" != 'Darwin' ]; then # macOS
  echo "# This script can be run only on macOS";
  exit 1;
fi

read -sp "Input root password: " PW
echo

echo ">>>>>>> Install Homebrew";
/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/install/master/install)";
brew update;
brew doctor;
brew install fish peco git tig jq tmux reattach-to-user-namespace caskroom/cask/brew-cask;
brew install vim --with-lua
echo "<<<<<<<";

echo ">>>>>>> Install 'terminal color-solarized'";
git clone https://github.com/tomislav/osx-terminal.app-colors-solarized ~/osx-terminal.app-colors-solarized;
echo "You must load 'color-solarized' in ~/osx-terminal.app-colors-solarized at Terminal Setting";
echo "<<<<<<<";

echo ">>>>>>> Use 'fish-shell'";
expect -c "
  spawn sudo sh -c \"echo '/usr/local/bin/fish' >> /etc/shells;\"
  expect {
      \"Password:\" {
          send \"${PW}\n\"
      }
  }
  spawn chsh -s /usr/local/bin/fish;
  expect {
      -regexp \"Password for .+:\" {
          send \"${PW}\n\"
      }
  }
"
fish
echo "<<<<<<<";

echo "#######################################";
echo " _____   _           _         _      ";
echo " |  ___| (_)  _ __   (_)  ___  | |__  ";
echo " | |_    | | | '_ \  | | / __| | '_ \ ";
echo " |  _|   | | | | | | | | \__ \ | | | |";
echo " |_|     |_| |_| |_| |_| |___/ |_| |_|";
echo "#######################################";
