sh -c "$(curl -fsSL https://raw.github.com/Shougo/neobundle.vim/master/bin/install.sh)";
git clone https://github.com/tomislav/osx-terminal.app-colors-solarized ~/osx-terminal.app-colors-solarized
cat ~/dotfiles/.vimrc-vim-color >> ~/dotfiles/.vimrc

echo "---- terminal color setting ----";
echo "Load terminal color profile in Terminal Setting";
