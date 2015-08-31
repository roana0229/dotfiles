ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/install/master/install)";
brew install zsh git tig;
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
git clone https://github.com/roana0229/dotfiles.git ~/dotfiles;
cp ~/dotfiles/simple-git.zsh-theme ~/.oh-my-zsh/themes/simple-git.zsh-theme
sudo sh ~/dotfiles/link.sh;
sh -c "$(curl -fsSL https://raw.github.com/Shougo/neobundle.vim/master/bin/install.sh)";

echo "Change default from bash to zsh."
echo "Must add \"/usr/local/bin/zsh\" in /etc/shells";
echo "After exit";
