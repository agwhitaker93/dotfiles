source "${ZSH_CONF}/antigen-conf.zsh"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
test -f "${ZSH_CONF}/p10k.zsh" && source "${ZSH_CONF}/p10k.zsh"

unsetopt autocd

source "${ZSH_CONF}/aws_profile.zsh" || echo "# used by aws_profile" > "${ZSH_CONF}/aws_profile.zsh"

source "${ZSH_CONF}/custom-config.zsh" || echo "# environment specific config for interactive terminal goes here" > "${ZSH_CONF}/custom-config.zsh"
