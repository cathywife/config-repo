REPO_NAME=repo
ROOT_PATH=${HOME}/._sys
REPO_PATH=$ROOT_PATH/$REPO_NAME

if [ ! -d $ROOT_PATH ];
then
    mkdir -p $ROOT_PATH
fi

cd $ROOT_PATH

git clone https://github.com/elvis-macak/config-repo $REPO_NAME

ln -sf `readlink -f $REPO_PATH/config/vim` ~/.vim
ln -sf `readlink -f $REPO_PATH/config/vim/vimrc` ~/.vimrc

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -sf `readlink -f $REPO_PATH/config/tmux/tmux.conf` ~/.tmux.conf

ln -sf `readlink -f $REPO_PATH/config/git/gitconfig` ~/.gitconfig

ln -sf `readlink -f $REPO_PATH/config/bower/bowerrc` ~/.bowerrc

ln -sf `readlink -f $REPO_PATH/config/npm/npmrc` ~/.npmrc


if [ `uname` != 'Linux' ]
then
    ln -sf ~/.bashrc ~/.bash_profile
fi
echo "ROOT_PATH=$ROOT_PATH" >> ~/.bashrc
echo ".  $REPO_PATH/config/bash/bashrc" >> ~/.bashrc
.  ~/.bashrc

# process the vim plugins
vim +PluginInstall +qall
