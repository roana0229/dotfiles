#!/bin/bash

if [ "$(uname)" != 'Darwin' ]; then # macOS
  echo "! This script can be run only on macOS";
  exit 1;
fi

if [ ! -d /Applications/Xcode.app ]; then
  echo '! require Xcode.app';
  exit 1;
fi

if ! [ -x "$(command -v brew)" ]; then
  echo '! require `brew` command';
  exit 1;
fi

set -eux

brew install git gh hub ghq peco jq tig openssl the_silver_searcher oath-toolkit zsh-completions
brew install python@3.9 nodenv node-build rbenv ruby-build direnv
brew cask install google-japanese-ime visual-studio-code
rm -f ~/.zcompdump; compinit

cp /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh ~/.git-prompt.sh
chmod 755 /usr/local/share

curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/.zshrc > ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/.zshenv > ~/.zshenv
curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/.vimrc > ~/.vimrc

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
