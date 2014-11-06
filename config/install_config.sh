#!/bin/bash

REPO_NAME=repo
ROOT_PATH=~/._sys
REPO_PATH=$ROOT_PATH/$REPO_NAME

if [ ! -d $ROOT_PATH ];
then
    mkdir -p $ROOT_PATH
fi

cd $ROOT_PATH

git clone https://github.com/elvis-macak/config-repo $REPO_NAME

ln -sf `readlink -f $REPO_PATH/config/vim` ~/.vim
ln -sf `readlink -f $REPO_PATH/config/vim/vimrc` ~/.vimrc


echo "ROOT_PATH=$ROOT_PATH" >> ~/.bashrc
echo ".  $REPO_PATH/config/bash/bashrc" >> ~/.bashrc
.  ~/.bashrc

sudo ln -sf `readlink -f $REPO_PATH/config/tmux/tmux.conf` /etc/tmux.conf
