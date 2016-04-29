#!/bin/bash

if [ "$(uname)" == 'Darwin' ]; then # OSX
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/install/master/install)";
  brew update;
  brew doctor;
  brew install zsh git tig tmux caskroom/cask/brew-cask;
  brew install vim --with-lua
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then # Linux
  rpm -ivh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm;
  yum check-update;
  yum update;
  yum install -y vim-nox zsh git tig tmux;
else
  echo "This script can be run only on OSX,Linux";
  exit 1;
fi

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";

# dotfiles
git clone https://github.com/roana0229/dotfiles.git ~/dotfiles;
cp -f ~/dotfiles/simple-git.zsh-theme ~/.oh-my-zsh/themes/simple-git.zsh-theme;
sh ~/dotfiles/link.sh;

# neobundle
sh -c "$(curl -fsSL https://raw.github.com/Shougo/neobundle.vim/master/bin/install.sh)";

# vim undo
mkdir -p ~/.vim/undo

# vim color
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git

if [ "$(uname)" == 'Darwin' ]; then
  # terminal color
  git clone https://github.com/tomislav/osx-terminal.app-colors-solarized ~/osx-terminal.app-colors-solarized;
  echo "\n--- terminal color setting ----";
  echo "Load terminal color profile in ~/osx-terminal.app-colors-solarized at Terminal Setting";

  echo "vim_path=\`brew info vim | grep /usr/local/Cellar/vim/ | sed 's/ .*//'\`" >> .zshenv
  echo "export PATH=/\$vim_path/bin:\$PATH" >> .zshenv

  # tmux-powerline
  git clone https://github.com/erikw/tmux-powerline.git ~/dotfiles/tmux-powerline
  cp -f ~/dotfiles/tmux-theme-default.sh ~/dotfiles/tmux-powerline/themes/default.sh;
  cp -f ~/dotfiles/weather.sh ~/dotfiles/tmux-powerline/segments/weather.sh;

  sudo echo "/usr/local/bin/zsh" >> /etc/shells;
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  chsh -s /bin/zsh;
fi

echo "#######################################";
echo " _____   _           _         _      ";
echo " |  ___| (_)  _ __   (_)  ___  | |__  ";
echo " | |_    | | | '_ \  | | / __| | '_ \ ";
echo " |  _|   | | | | | | | | \__ \ | | | |";
echo " |_|     |_| |_| |_| |_| |___/ |_| |_|";
echo "#######################################";
echo "######### You must exit once! #########";
