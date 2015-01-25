CLONE_DIR=/home/vagrant/

ln -sf ${CLONE_DIR}/dotfiles/.bashrc /home/vagrant/.bashrc
ln -sf ${CLONE_DIR}/dotfiles/.bashrc /root/.bashrc
ln -sf ${CLONE_DIR}/dotfiles/.bash_profile /home/vagrant/.bash_profile
ln -sf ${CLONE_DIR}/dotfiles/.bash_profile /root/.bash_profile
ln -sf ${CLONE_DIR}/dotfiles/.vimrc /home/vagrant/.vimrc
ln -sf ${CLONE_DIR}/dotfiles/.vimrc /home/vagrant/.vimrc
ln -sf ${CLONE_DIR}/dotfiles/.gitconfig /home/vagrant/.gitconfig
ln -sf ${CLONE_DIR}/dotfiles/.gitconfig /root/.gitconfig
mkdir -p /usr/local/git/contrib/completion
ln -sf ${CLONE_DIR}/dotfiles/.git-completion.bash /usr/local/git/contrib/completion/.git-completion.bash
ln -sf ${CLONE_DIR}/dotfiles/.jshintrc /home/vagrant/.jshintrc
ln -sf ${CLONE_DIR}/dotfiles/.jshintrc /root/.jshintrc
