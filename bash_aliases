#!/usr/bin/env bash

# Aliases
    # TODO: assign aliases only when the actual programs exist. eg 'if [ exists
    # neofetch ]; then alias neo='neofetch'; fi
    alias neo='neofetch'
    alias tldr='tldr -t ocean'

    alias lss='ls'
    alias ls='ls -FG'
    alias lsa='ls -AFG'
    alias lsl='ls -FGhl'
    alias lal='ls -AFGhl'

    alias showColors='curl -s https://gist.githubusercontent.com/HaleTom/89ffe32783f89f403bba96bd7bcd1263/raw/ | bash'
    # alias mnotes='vim ~/vimwiki/index.wiki'
    # alias vimwiki='vim ~/vimwiki/index.wiki'
    alias mvim='vim ~/.vim/vimrc'
    eval "$(hub alias -s)"

    alias gradle='~/gradle-4.4.1/bin/gradle'
    alias gradle4='~/gradle-4.4.1/bin/gradle'
    alias gradle5='/usr/local/Cellar/gradle/5.0/libexec/bin/gradle'

    alias mysnap='snap_2019-04-26_11-05-03'
    alias emustart='emulator @9.0apis -no-snapshot-save -no-boot-anim -snapshot '
    alias emulistavds='emulator -list-avds'
    alias emulistsnaps='emulator @9.0apis -snapshot-list'
    alias avd='avdmanager'

    alias setJava8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'
    alias setJava11='export JAVA_HOME=$(/usr/libexec/java_home -v 11)'

#     alias hey="printf 'there we "\
# +"go\n'"
    # alias now='printf ''there we ' #TODO: why does this not work?
    # alias now='printf '\''there we go \n'\'

