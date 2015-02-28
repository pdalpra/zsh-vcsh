skip_global_compinit=1
source $HOME/.bin/antigen/antigen.zsh

PATH=/usr/local/sbin:$PATH # Homebrew
PATH=$PATH:~/.bin/jtools/bin
PATH=$PATH:~/.bin/jenv/bin

# Init bash completion for tools based on basecamp/sub
eval "$(jenv init -)"
eval "$(jtools init -)"

# Set PATH and env vars from jtools
PATH=$PATH:$(jtools path)
export M2_HOME=$(jtools maven home)
