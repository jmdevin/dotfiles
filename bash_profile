#!/usr/bin/env bash

printf 'Executing ~/.bash_profile at:\n' >> ~/mystartup.log
date +"%A, %B %d, %Y at %T.%N %Z (%::z)" >> ~/mystartup.log

# if [ -f ~/.profile ]; then
#     # shellcheck source=.profile
#     source "$HOME/.profile"
# fi

# if [ -f ~/.bashrc ]; then
#     # shellcheck source=.bashrc
#     source "$HOME/.bashrc"
# fi

