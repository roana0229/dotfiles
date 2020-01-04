#!/bin/bash -eux

if [ "$(uname)" != 'Darwin' ]; then # macOS
  echo "# This script can be run only on macOS";
  exit 1;
fi

if [ ! -d /Applications/Xcode.app ]; then
  echo '# Install Xcode.app from App Store or Developer Site'
  exit 1;
fi

xcode-select --print-path;
xcode-select --switch /Applications/Xcode.app;

# for prompt
cp /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh ~/.git-prompt.sh
chmod 755 /usr/local/share

git clone git@github.com:roana0229/dotfiles.git ~/dotfiles;
~/dotfiles/link.sh;

/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/install/master/install)";
brew update;
brew doctor;
brew install caskroom/cask/brew-cask;

# install dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/dotfiles/installer.sh;
mkdir -p ~/.vim/bundle;
sh ~/dotfiles/installer.sh ~/.vim/bundle;
rm -f ~/dotfiles/installer.sh;

# teminal color
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
