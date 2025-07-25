# include .bashrc_aliases if it exists
if [ -f $HOME/.bashrc_aliases ]; then
    . $HOME/.bashrc_aliases
fi

# include .bashrc_custom if it exists
if [ -f $HOME/.bashrc_custom ]; then
    . $HOME/.bashrc_custom
fi
