#!/usr/bin/env bash

date >> ~/mystartup.log
printf 'executing ~/.bashrc...\n\n' >> ~/mystartup.log

# reminders
    # install and set the newest bash version as default on osx

# urgent
    # resort rc files so that the path is not reloaded every time tmux or
    # another tab is opened

# ideas
    # Could I write a function that causes swap files (for vim and office) to
    # not appear when ls is used, but instead a single line with 'x number of
    # swap files in directory' is printed?

# The shell normally executes /etc/profile, then /etc/bashrc, then
# ~/.bash_profile, then ~/.bash_login, then ~/.profile

# if [ "$(uname)" == "Darwin" ]; then
#     export 'CLICOLOR=1'
# fi

# export PS1='\[\e[1;32m\]| \A - \d - J:\j |\[\e[m\] \[\e[1;34m\]\w/\[\e[m\] \[\e[1;32m\]\$ \[\e[m\]'
export PS1=' \[\e[1;34m\]\w/\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '
# export EDITOR='vim'

# TODO: Run neofetch only when the first terminal of a login shell opens
if [ -n "$TMUX" ]; then
    neofetch
fi

if [ -f ~/.bash_aliases ]; then
    # shellcheck source=.bash_aliases
    source "$HOME/.bash_aliases"
fi

# if [ -n "$TMUX" ]; then
#     neofetch
# fi

# # Path
#     # Dart and flutter
#         export FLUTTER_HOME="$HOME/flutter/"
#         export PATH="$FLUTTER_HOME/bin/:$PATH"
#         export PATH="$HOME/.pub-cache/bin/:$PATH"
#         export PATH="$FLUTTER_HOME/bin/cache/dart-sdk/bin/:$PATH"
# 
#     # android
#         export PATH="$HOME/Library/Android/sdk/emulator/:$PATH"
#         export PATH="$HOME/Library/Android/sdk/tools/bin/:$PATH"
# 
#     # Java
#         JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
#         export JAVA_HOME
#         export PATH="$JAVA_HOME":$PATH
#         # export PATH="$JAVA_HOME/bin":$PATH
# 
#     # Python
#         export PATH='/usr/local/opt/python/libexec/bin/':$PATH

# Aliases
    # alias neo='neofetch'
    # alias tldr='tldr -t ocean'

    # alias lss='ls -FG'
    # alias lsa='ls -AFG'
    # alias lsl='ls -FGho'
    # alias lal='ls -AFGho'

    # alias showColors='curl -s https://gist.githubusercontent.com/HaleTom/89ffe32783f89f403bba96bd7bcd1263/raw/ | bash'
    # # alias mnotes='vim ~/vimwiki/index.wiki'
    # # alias vimwiki='vim ~/vimwiki/index.wiki'
    # alias mvim='vim ~/.vim/vimrc'
    # eval "$(hub alias -s)"

    # alias gradle='~/gradle-4.4.1/bin/gradle'
    # alias gradle4='~/gradle-4.4.1/bin/gradle'
    # alias gradle5='/usr/local/Cellar/gradle/5.0/libexec/bin/gradle'

    # alias mysnap='snap_2019-04-26_11-05-03'
    # alias emustart='emulator @9.0apis -no-snapshot-save -no-boot-anim -snapshot '
    # alias emulistavds='emulator -list-avds'
    # alias emulistsnaps='emulator @9.0apis -snapshot-list'
    # alias avd='avdmanager'

    # alias setJava8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'
    # alias setJava11='export JAVA_HOME=$(/usr/libexec/java_home -v 11)'

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


