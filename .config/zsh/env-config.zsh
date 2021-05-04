source "${ZSH_CONF}/env.zsh" || echo "# exports go here" > "${ZSH_CONF}/env.zsh"

if test ! -f "${ZSH_CONF}/functions.zsh"; then
    echo >> "${ZSH_CONF}/functions.zsh" << EOF
# General purpose functions go here
autoload "${ZSH_CONF}/autoloaded_functions"/*

# Anything specific to the current environment should go here
mkdir -p "${ZSH_CONF}/custom_autoloaded_functions"
autoload "${ZSH_CONF}/custom_autoloaded_functions"/*
EOF
fi

source "${ZSH_CONF}/functions.zsh"

source "${ZSH_CONF}/aliases.zsh" || echo "# aliases go here" > "${ZSH_CONF}/aliases.zsh"

source "${ZSH_CONF}/bookmarks.zsh" || echo "#used by the bookmark function" > "${ZSH_CONF}/bookmarks.zsh"

