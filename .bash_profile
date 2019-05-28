echo 'executing ~/.bash_profile pointlessly...'

if [ -f ~/.bashrc ]; then
    echo '    calling ~/.bashrc...'
    source ~/.bashrc
fi
