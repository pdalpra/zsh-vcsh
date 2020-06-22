# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#################
#  zplug setup  #
#################

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "robbyrussell/oh-my-zsh", use:"lib"

zplug "romkatv/powerlevel10k", as:theme

zplug "plugins/cargo", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/fancy-ctrl-z", from:oh-my-zsh
zplug "plugins/httpie", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/rustup", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh
zplug "plugins/zsh-interactive-cd", from:oh-my-zsh

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"

if ! zplug check; then zplug install; fi
zplug load

[ -f $HOME/.p10k.zsh ] && source $HOME/.p10k.zsh
[ -f $HOME/.fzf.zsh  ] && source $HOME/.fzf.zsh

# nvm
[ -f $HOME/.nvm/nvm.sh        ] && source $HOME/.nvm/nvm.sh
[ -f $NVM_DIR/bash_completion ] && source $NVM_DIR/bash_completion

# rustup
[ -f $HOME/.cargo/env ] && source $HOME/.cargo/env

source ~/.zsh-aliases

[ -f $HOME/.zsh-custom ] && source $HOME/.zsh-custom
