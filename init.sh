# brew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/install/master/install)";
brew install zsh git tig caskroom/cask/brew-cask;

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";

# dotfiles
git clone https://github.com/roana0229/dotfiles.git ~/dotfiles;
cp ~/dotfiles/simple-git.zsh-theme ~/.oh-my-zsh/themes/simple-git.zsh-theme
sudo sh ~/dotfiles/link.sh;

# neobundle
sh -c "$(curl -fsSL https://raw.github.com/Shougo/neobundle.vim/master/bin/install.sh)";

# vim color
git clone https://github.com/tomislav/osx-terminal.app-colors-solarized ~/osx-terminal.app-colors-solarized
LF=$'\\\x0A'
sed -i -e 's/\" for replase: vim color setting/syntax enable'"$LF"'set background=dark'"$LF"'colorscheme solarized'"$LF"'let g:solarized_termcolors=256/' ~/dotfiles/.vimrc
rm -rf ~/dotfiles/.vimrc-e

# message
echo "\n---- terminal color setting ----";
echo "Load terminal color profile in Terminal Setting";

echo "\n----- change default from bash to zsh ----"
echo "Must add \"/usr/local/bin/zsh\" in /etc/shells";
echo "After exit\n";
