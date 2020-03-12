#!/usr/bin/env bash

printf 'Executing ~/.bash_aliases at:\n' >> ~/mystartup.log
date +"%A, %B %d, %Y at %T.%N %Z (%::z)" >> ~/mystartup.log

# System
    if [ "$(uname)" == "Darwin" ]; then
        alias ls='ls -FG'
        alias lsa='ls -AFG'
        alias lsl='ls -FGhl'
        alias lal='ls -AFGhl'
    elif [ "$(uname)" == "Linux" ]; then
        alias ls='ls -F --color=always --group-directories-first'
        alias lsa='ls -AF --color=always --group-directories-first'
        alias lsl='ls -Fhl --color=always --group-directories-first'
        alias lal='ls -AFhl --color=always --group-directories-first'

        if [ -x "$(command -v xdg-open)" ]; then
            alias open='xdg-open'
        fi
    fi

# Android/flutter
    if [ -x "$(command -v avdmanager)" ]; then
        alias avd='avdmanager'
    fi
    if [ -x "$(command -v sdkmanager)" ]; then
        alias sdk='sdkmanager'
    fi

# Emacs
    if [ -x "$(command -v emacs)" ]; then
        alias emacs='emacs -nw'
    fi

# Git
    if [ -x "$(command -v git)" ]; then
        alias gdif='git diff'
        alias glog='git log'
        alias gst='git status'
    fi

    # 'git' itself must be aliased after other aliases have been set, or else
    # it will return as false from 'command -v'
    if [ -x "$(command -v hub)" ]; then
        eval "$(hub alias -s)"
    fi

# Vim
    if [ -x "$(command -v vim)" ] && [ -d ~/dotfiles ]; then
        alias dvim='vim ~/dotfiles'
    fi
    if [ -x "$(command -v vim)" ] && [ -f ~/.vim/vimrc ]; then
        alias mvim='vim ~/.vim/vimrc'
    fi

# Nice to haves
    if [ -x "$(command -v neofetch)" ]; then
        alias neo='neofetch'
    fi
    if [ -x "$(command -v curl)" ]; then
        alias showColors='curl -s https://gist.githubusercontent.com/HaleTom/89ffe32783f89f403bba96bd7bcd1263/raw/ | bash'
    fi
    if [ -x "$(command -v tldr)" ]; then
        alias tldr='tldr -t ocean'
    fi

    # alias mysnap='snap_2019-04-26_11-05-03'
    # alias emustart='emulator @9.0apis -no-snapshot-save -no-boot-anim -snapshot '
    # alias emulistavds='emulator -list-avds'
    # alias emulistsnaps='emulator @9.0apis -snapshot-list'

    # alias setJava8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'
    # alias setJava11='export JAVA_HOME=$(/usr/libexec/java_home -v 11)'

