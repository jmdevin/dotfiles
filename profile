printf 'Executing ~/.profile at:\n' >> ~/mystartup.log
date +"%A, %B %d, %Y at %T.%N %Z (%::z)" >> ~/mystartup.log

if [ "$(uname)" == "Darwin" ]; then
    # TODO: are these only supposed to be used in bash?
    export CLICOLOR=1
    export LSCOLORS='ExFxCxDxBxEGEDaBaGaCaD'
fi

# TODO: if linux, set LS_COLORS. Use dircolors output to plan that

# if [ -x "$(command -v vim)" ]; then
#     export MANPAGER="vim -M +MANPAGER -"
# fi

if [ -x "$(command -v vim)" ]; then
    export EDITOR='vim'
fi

# TODO: set a separate script, untracked by git, which sets flutter_home and
# other such variables for each system. Source it here, then add if statements
# here which add flutter_home:/bin/ and such to the path

# Path
    # Set variables
if [ -f ~/.profile_variables ]; then
    # shellcheck source=.profile_variables
    source ~/.profile_variables
fi
            # export FLUTTER_HOME=
            # should this be flutter_location or something?
            # export JAVA_HOME=


# TODO: set these to check for the existence of the directories before adding
# them to the path
    # should be default
        export PATH="$PATH:$HOME/.local/bin/"

    # android
        # export PATH="$PATH:$HOME/Library/Android/sdk/emulator/"
        # export PATH="$PATH:$HOME/Library/Android/sdk/tools/bin/"
        # export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools/"
        export PATH="$PATH:$HOME/Android/Sdk/emulator/"
        export PATH="$PATH:$HOME/Android/Sdk/tools/bin/"
        export PATH="$PATH:$HOME/Android/Sdk/platform-tools/"

    # Dart and flutter
        # export FLUTTER_HOME="$HOME/flutter/"
        export FLUTTER_HOME="$HOME/development/flutter/"
        export PATH="$PATH:$FLUTTER_HOME/bin/"
        export PATH="$PATH:$HOME/.pub-cache/bin/"
        export PATH="$PATH:$FLUTTER_HOME/bin/cache/dart-sdk/bin/"

    # Java
        # JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
        # export JAVA_HOME
        # export PATH="$PATH:$JAVA_HOME"
        # export PATH="$PATH:$JAVA_HOME/bin"

    # Python
        # export PATH="$PATH:/usr/local/opt/python/libexec/bin/"

    # qmk
        export PATH="$PATH:$HOME/qmk_firmware/bin/"

    # snap
        # export PATH="$PATH:/var/lib/snapd/snap/bin/"

    # ruby
        export PATH="$PATH:$HOME/.rbenv/bin"
