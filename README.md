elvis-config
============

> Still persist for bash, with customization, it's as strong as zsh


##Quick install

    wget https://raw.githubusercontent.com/elvis-macak/config-repo/master/install.sh
    sh install.sh
    . ~/.bashrc

## Simple vim config

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

## Simple git config

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
