# Run by zsh on login. Apparently zsh has enough inconsistencies with bash to
# not use .profile

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
. "$HOME/.cargo/env"

# Set XDG spec vars in case we use scripts that depend on them
echo ${XDG_CONFIG_HOME:=$HOME/.config}

if [ -d "$HOME/.local/scripts" ] ; then
    PATH="$HOME/.local/scripts:$PATH"
fi

