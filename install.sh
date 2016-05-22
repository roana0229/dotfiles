#!/bin/bash

if [ "$(uname)" != 'Darwin' ]; then # OSX
  echo "# This script can be run only on OSX";
  exit 1;
fi

echo "# install Homebrew"
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/install/master/install)";
brew update;
brew doctor;
brew install zsh git tig tmux caskroom/cask/brew-cask;
brew install vim --with-lua

echo "# install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";

echo "# install dotfiles"
git clone https://github.com/roana0229/dotfiles.git ~/dotfiles;
cp -f ~/dotfiles/simple-git.zsh-theme ~/.oh-my-zsh/themes/simple-git.zsh-theme;
sh ~/dotfiles/link.sh;

echo "# install NeoBundle"
sh -c "$(curl -fsSL https://raw.github.com/Shougo/neobundle.vim/master/bin/install.sh)";

# vim undo
mkdir -p ~/.vim/undo

echo "# install vim color-solarized"
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle

echo "# install terminal color-solarized"
git clone https://github.com/tomislav/osx-terminal.app-colors-solarized ~/osx-terminal.app-colors-solarized;
echo "\n### terminal color setting ###";
echo "# Load terminal color profile in ~/osx-terminal.app-colors-solarized at Terminal Setting";

echo "vim_path=\`brew info vim | grep /usr/local/Cellar/vim/ | sed 's/ .*//'\`" >> .zshenv
echo "export PATH=/\$vim_path/bin:\$PATH" >> .zshenv

echo "# install tmux-powerline"
git clone https://github.com/erikw/tmux-powerline.git ~/tmux-powerline
cp -f ~/dotfiles/tmux/tmux-theme-default.sh ~/tmux-powerline/themes/default.sh;
cp -f ~/dotfiles/tmux/weather.sh ~/tmux-powerline/segments/weather.sh;

echo "# add zsh shells"
sudo echo "/usr/local/bin/zsh" >> /etc/shells;

echo "#######################################";
echo " _____   _           _         _      ";
echo " |  ___| (_)  _ __   (_)  ___  | |__  ";
echo " | |_    | | | '_ \  | | / __| | '_ \ ";
echo " |  _|   | | | | | | | | \__ \ | | | |";
echo " |_|     |_| |_| |_| |_| |___/ |_| |_|";
echo "#######################################";
echo "######### You must exit once! #########";
