[ -f $HOME/.fzf.zsh  ] && source $HOME/.fzf.zsh

# nvm
[ -f $HOME/.nvm/nvm.sh        ] && source $HOME/.nvm/nvm.sh
[ -f $NVM_DIR/bash_completion ] && source $NVM_DIR/bash_completion

# rustup
[ -f $HOME/.cargo/env ] && source $HOME/.cargo/env

source ~/.zsh-aliases

[ -f $HOME/.zsh-custom ] && source $HOME/.zsh-custom
