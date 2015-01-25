## Home Macbook
# cat bashrc_home_mac.txt >> ~/dotfiles/.bashrc
# cat bashprofile_home_mac.txt >> ~/dotfiles/.bash_profile

ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
mkdir -p /usr/local/git/contrib/completion
ln -sf ~/dotfiles/git-completion.bash /usr/local/git/contrib/completion/git-completion.bash
ln -sf ~/dotfiles/.jshintrc ~/.jshintrc
