# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# fzf
[ -f $HOME/.fzf.zsh  ] && source $HOME/.fzf.zsh

# nvm
[ -f $HOME/.nvm/nvm.sh        ] && source $HOME/.nvm/nvm.sh
[ -f $NVM_DIR/bash_completion ] && source $NVM_DIR/bash_completion

# rustup
[ -f $HOME/.cargo/env ] && source $HOME/.cargo/env

source ~/.zsh-aliases

[ -f $HOME/.zsh-custom ] && source $HOME/.zsh-custom

# sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
