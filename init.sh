# brew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/install/master/install)";

brew doctor
brew install zsh git tig tmux caskroom/cask/brew-cask;
brew install http://www.soimort.org/translate-shell/translate-shell.rb

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";

# dotfiles
git clone https://github.com/roana0229/dotfiles.git ~/dotfiles;
cp ~/dotfiles/simple-git.zsh-theme ~/.oh-my-zsh/themes/simple-git.zsh-theme
sudo sh ~/dotfiles/link.sh;
source ~/.zshenv;
source ~/.zshrc;

brew cask install dropbox google-chrome virtualbox vagrant kobito bettertouchtool atom;

# neobundle
sh -c "$(curl -fsSL https://raw.github.com/Shougo/neobundle.vim/master/bin/install.sh)";

# vim color
git clone https://github.com/tomislav/osx-terminal.app-colors-solarized ~/osx-terminal.app-colors-solarized

# message
echo "\n---- terminal color setting ----";
echo "Load terminal color profile in ~/osx-terminal.app-colors-solarized at Terminal Setting";

echo "\n----- change default from bash to zsh ----"
echo "Must add \"/usr/local/bin/zsh\" in /etc/shells";
echo "After exit\n";
