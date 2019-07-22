#!/usr/bin/env bash

date >> ~/mystartup.log
echo 'executing ~/.bash_profile...' >> ~/mystartup.log

if [ -f ~/.profile ]; then
    # shellcheck source=.profile
    source "$HOME/.profile"
fi

if [ -f ~/.bashrc ]; then
    # shellcheck source=.bashrc
    source "$HOME/.bashrc"
fi

