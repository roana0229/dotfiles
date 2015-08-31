git clone https://github.com/tomislav/osx-terminal.app-colors-solarized ~/osx-terminal.app-colors-solarized
LF=$'\\\x0A'
sed -i -e 's/\" for replase: vim color setting/syntax enable'"$LF"'set background=dark'"$LF"'colorscheme solarized'"$LF"'let g:solarized_termcolors=256/' ~/dotfiles/.vimrc
rm -rf ~/dotfiles/.vimrc-e

echo "---- terminal color setting ----";
echo "Load terminal color profile in Terminal Setting";
