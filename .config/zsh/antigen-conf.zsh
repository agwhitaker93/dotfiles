source "${ZSH_CONF}/lib/antigen.zsh"

antigen use oh-my-zsh

antigen bundle git
antigen bundle nvm

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme romkatv/powerlevel10k

antigen apply

