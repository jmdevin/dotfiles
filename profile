printf 'Executing ~/.profile at:\n' >> ~/mystartup.log
date +"%A, %B %d, %Y at %T.%N %Z (%::z)" >> ~/mystartup.log

if [ -f ~/.profile_variables.sh ]; then
    # shellcheck source=.profile_variables.sh
    source ~/.profile_variables.sh
fi
