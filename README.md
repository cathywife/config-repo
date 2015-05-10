elvis-config
============


个人的配置文件

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

    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

    echo "ROOT_PATH=$ROOT_PATH" >> ~/.bashrc
    echo ".  $REPO_PATH/config/bash/bashrc" >> ~/.bashrc
    .  ~/.bashrc

    ln -sf `readlink -f $REPO_PATH/config/tmux/tmux.conf` ~/.tmux.conf

    ln -sf `readlink -f $REPO_PATH/config/git/gitconfig` ~/.gitconfig

    ln -sf `readlink -f $REPO_PATH/config/bower/bowerrc` ~/.bowerrc

    # process the vim plugins
    vim +PluginInstall +qall


简化的vimrc配置,可用于服务器中,偏大众化,不会影响到他人

    " basic setting
    syntax enable
    syntax on
    color ron
    set nu
    set ic
    set hls
    set ts=4
    set sts=4
    set et
    set smarttab
    set sm
    set ai
    set si
    set sw=4
    set sr
    set term=xterm-256color

    let g:tlTokenList = ["FIXME", "TODO", "XXX", "NotImplemented"]
    set matchpairs=(:),{:},[:],<:>
    let mapleader=","
    let g:mapleader=","

    nmap <leader>w :w!<CR>

    map 0 ^
    map j gj
    map k gk

    map <C-j> <C-W>j
    map <C-k> <C-W>k
    map <C-h> <C-W>h
    map <C-l> <C-W>l

个人的git配置,主要是颜色高亮和一些默认工具的配置

    [user]
        email = elvis@lnmpy.com
        name = elvis
    [credential]
        # set credential for keeping a week
        helper = cache --timeout 604800
    [core]
        editor = vim
    [alias]
        st = status
        ci = commit -v
    [sequence]
        editor = vim
    [merge]
        tool = vimdiff
    [color]
        status = auto
        branch = auto
        interactive = auto
        diff= auto
        grep = auto
