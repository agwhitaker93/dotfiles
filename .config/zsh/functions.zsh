fpath=( "${ZSH_CONF}/autoloaded_functions" "${fpath[@]}" )
autoload "${ZSH_CONF}/autoloaded_functions"/*
autoload "${ZSH_CONF}/autoloaded_functions/osx"/*

mkdir -p "${ZSH_CONF}/custom_autoloaded_functions"
autoload "${ZSH_CONF}/custom_autoloaded_functions"/*

