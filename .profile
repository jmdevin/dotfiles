#!/usr/bin/env bash

date >> mystartup.log
echo 'executing ~/.profile' >> ~/mystartup.log

if [ "$(uname)" == "Darwin" ]; then
    export 'CLICOLOR=1'
fi

export EDITOR='vim'

# Path
    # Dart and flutter
        export FLUTTER_HOME="$HOME/flutter/"
        export PATH="$FLUTTER_HOME/bin/:$PATH"
        export PATH="$HOME/.pub-cache/bin/:$PATH"
        export PATH="$FLUTTER_HOME/bin/cache/dart-sdk/bin/:$PATH"

    # android
        export PATH="$HOME/Library/Android/sdk/emulator/:$PATH"
        export PATH="$HOME/Library/Android/sdk/tools/bin/:$PATH"

    # Java
        JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
        export JAVA_HOME
        export PATH="$JAVA_HOME":$PATH
        # export PATH="$JAVA_HOME/bin":$PATH

    # Python
        export PATH='/usr/local/opt/python/libexec/bin/':$PATH

