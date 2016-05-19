#!/bin/bash

if [ "$1" == "" ]; then
  echo '# must input user'
  echo "# run this command 'sudo sh $0 user'"
  exit 1
fi

yum check-update;
yum update;
yum install -y vim-nox;

# install neobundle
sh -c "$(curl -fsSL https://raw.github.com/Shougo/neobundle.vim/master/bin/install.sh)";

# create undo history dir
mkdir -p /root/.vim/undo
mkdir -p /home/$1/.vim/undo

# clone vim color scheme
git clone git://github.com/altercation/vim-colors-solarized.git /root/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git /home/$1/.vim/bundle

# clone vimrc on system wide
curl "https://raw.githubusercontent.com/roana0229/dotfiles/master/.vimrc" > /etc/vimrc
