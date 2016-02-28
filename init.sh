#!/bin/bash

if [ "$(uname)" == 'Darwin' ]; then # Mac
  # brew
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/install/master/install)";
  brew doctor;
  brew install zsh git tig tmux caskroom/cask/brew-cask;
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  rpm -ivh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm;
  yum check-update;
  yum update;
  yum install -y vim-enhanced zsh git tig tmux;
fi

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";

# dotfiles
git clone https://github.com/roana0229/dotfiles.git ~/dotfiles;
cp -rf ~/dotfiles/simple-git.zsh-theme ~/.oh-my-zsh/themes/simple-git.zsh-theme;
cp -rf ~/dotfiles/tmux-theme-default.sh ~/dotfiles/tmux-powerline/themes/default.sh;
sudo sh ~/dotfiles/link.sh;

# neobundle
sh -c "$(curl -fsSL https://raw.github.com/Shougo/neobundle.vim/master/bin/install.sh)";

# vim undo
mkdir -p ~/.vim/undo

if [ "$(uname)" == 'Darwin' ]; then # Mac
  # vim color
  git clone https://github.com/tomislav/osx-terminal.app-colors-solarized ~/osx-terminal.app-colors-solarized;
  # tmux-powerline
  git clone https://github.com/erikw/tmux-powerline.git ~/dotfiles/tmux-powerline

  echo "\n---- terminal color setting ----";
  echo "Load terminal color profile in ~/osx-terminal.app-colors-solarized at Terminal Setting";

  echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.zshenv;
  source ~/.zshenv;
  brew cask install dropbox google-chrome virtualbox vagrant kobito bettertouchtool atom;
  echo "\n----- change default from bash to zsh ----";
  echo "Must add \"/usr/local/bin/zsh\" in /etc/shells";
  echo "After exit\n";
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
