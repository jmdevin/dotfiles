# The shell normally executes /etc/profile, then /etc/bashrc, then ~/.bash_profile, then ~/.bash_login, then ~/.profile
# TODO:Figure out difference between single-quotes, double-quotes, and backticks
echo "executing ~/.bashrc..."

if [ "$(uname)" == "Darwin" ]; then
    export 'CLICOLOR=1'
fi

export PS1='\[\e[1;32m\][ \d | \A ][J:\j]\[\e[m\] \[\e[1;34m\]\w/\[\e[m\] \[\e[1;32m\]\$ \[\e[m\]'

export FLUTTER_HOME='~/flutter'
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

alias gradle='~/gradle-4.4.1/bin/gradle'
alias gradle4='~/gradle-4.4.1/bin/gradle'
alias gradle5='/usr/local/Cellar/gradle/5.0/libexec/bin/gradle'

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
alias mysnap='snap_2019-04-26_11-05-03'
alias emustart='emulator @9.0apis -no-snapshot-save -no-boot-anim -snapshot '
alias emulistavds='emulator -list-avds'
alias emulistsnaps='emulator @9.0apis -snapshot-list'

alias setJava8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)"
alias setJava11="export JAVA_HOME=$(/usr/libexec/java_home -v 11)"

export PATH='~/.pub-cache/bin':$PATH
export PATH='~/.pub-cache/bin/':$PATH
export PATH='~/.pub-cache/bin/dart_language_server':$PATH
export PATH='/usr/local/share/python/':$PATH
export PATH='/Users/jdevin/Library/Android/sdk/emulator/':$PATH
export PATH='/Users/jdevin/flutter/bin/cache/dart-sdk/bin':$PATH
export PATH=$FLUTTER_HOME/bin:$PATH
export PATH=$JAVA_HOME:$PATH
export PATH=$JAVA_HOME/bin:$PATH

alias lis='ls -FG'
alias lsa='ls -AFG'
alias lsl='ls -FGho'
alias lal='ls -AFGho'

alias showColors='curl -s https://gist.githubusercontent.com/HaleTom/89ffe32783f89f403bba96bd7bcd1263/raw/ | bash'
alias mnotes='vim ~/vimwiki/index.wiki'
alias vimwiki='vim ~/vimwiki/index.wiki'
alias mvimrc='vim ~/.vim/vimrc'
eval "$(hub alias -s)"
