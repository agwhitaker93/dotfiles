source ${ZSH_CONF}/lib/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundle git
antigen bundle nvm

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

#antigen bundle agkozak/agkozak-zsh-prompt

#antigen bundle mafredri/zsh-async
#antigen bundle sindresorhus/pure

antigen theme romkatv/powerlevel10k

antigen apply

