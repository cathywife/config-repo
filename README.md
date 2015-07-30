elvis-config
============


个人的配置文件

    wget https://raw.githubusercontent.com/elvis-macak/config-repo/master/install.sh
    sh install.sh
    . ~/.bashrc


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
