# not really sure why I need this? guides say to add it, but it doesn't seem to make any difference
#fpath=( "${ZSH_CONF}/autoloaded_functions" "${fpath[@]}" )

mkdir -p "${ZSH_CONF}/autoloaded_functions"
autoload "${ZSH_CONF}/autoloaded_functions"/*

mkdir -p "${ZSH_CONF}/autoloaded_functions/osx"
autoload "${ZSH_CONF}/autoloaded_functions/osx"/*

mkdir -p "${ZSH_CONF}/custom_autoloaded_functions"
autoload "${ZSH_CONF}/custom_autoloaded_functions"/*

