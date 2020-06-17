# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

###################
#  Antigen setup  #
###################

antigen use oh-my-zsh

antigen theme romkatv/powerlevel10k

antigen bundle docker
antigen bundle httpie
antigen bundle sudo
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions src
antigen bundle git-extras
antigen bundle rupa/z

antigen apply

[ -f $HOME/.p10k.zsh   ] && source $HOME/.p10k.zsh
[ -f $HOME/.zsh-custom ] && source $HOME/.zsh-custom
[ -f $HOME/.fzf.zsh    ] && source $HOME/.fzf.zsh

# nvm
[ -f $HOME/.nvm/nvm.sh        ] && source $HOME/.nvm/nvm.sh
[ -f $NVM_DIR/bash_completion ] && source $NVM_DIR/bash_completion

# rustup
[ -f $HOME/.cargo/env ] && source $HOME/.cargo/env

source ~/.zsh-aliases
