#!/usr/bin/env bash

printf 'Executing ~/.bashrc at:\n' >> ~/mystartup.log
date +"%A, %B %d, %Y at %T.%N %Z (%::z)" >> ~/mystartup.log

# export PS1='\[\e[1;32m\]| \A - \d - J:\j |\[\e[m\] \[\e[1;34m\]\w/\[\e[m\] \[\e[1;32m\]\$ \[\e[m\]'
export PS1=' \[\e[1;34m\]\w/\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '

# if col, vim, and vim's :Man exist. (bash exists since this is the bashrc)
# export MANPAGER="/usr/bin/env bash -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""

# TODO: Run neofetch only when the first terminal of a login shell opens
if [ -n "$TMUX" ] && [ -x "$(command -v neofetch)" ]; then
    neofetch
fi

if [ -x "$(command -v rbenv)" ]; then
    eval "$(rbenv init -)"
fi

if [ -f ~/.bash_aliases ]; then
    # shellcheck source=.bash_aliases
    source "$HOME/.bash_aliases"
fi

    # emulator @emulatorName
    # || -snapshot-list
                    # Lists snapshots
    # || -snapshot snapshotName
                    # Loads a snapshot if exists, else cold boots
    # || -no-snapshot
                    # Disables both loading and saving a snapshot
    # || -no-snapshot-save
                    # Can load a snapshot, but won't save it
    # || -wipe-data
                    # Seems to mean cold boot and delete snapshots
    # || -no-boot-anim
                    # "Disables boot animation for faster booting."


