skip_global_compinit=1

export TERM="xterm-256color"

export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.bin/diff-so-fancy:$PATH

source $HOME/.bin/antigen/antigen.zsh

# Alias git to hub
eval "$(hub alias -s)"

. $HOME/.bullet-train

[[ -f $HOME/.zsh-custom ]] && . $HOME/.zsh-custom
[[ -f $HOME/.cargo/env ]]  && . $HOME/.cargo/env

# Aliases
alias mr_home="mr -d ~"
