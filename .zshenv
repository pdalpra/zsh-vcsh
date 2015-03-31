skip_global_compinit=1

PATH=$PATH:$HOME/.scripts

eval "$(os-detect)"

if [[ $OS == "OSX" ]]; then
  SHELL=/usr/local/bin/zsh
  eval "$(boot2docker shellinit 2> /dev/null)"
fi

source $HOME/.bin/antigen/antigen.zsh

PATH=/usr/local/sbin:$PATH # Homebrew
PATH=$PATH:$HOME/.bin/jtools/bin
PATH=$PATH:$HOME/.bin/jenv/bin

# Init bash completion for tools based on basecamp/sub
eval "$(jenv init -)"
eval "$(jtools init -)"

# Set PATH and env vars from jtools
PATH=$PATH:$(jtools path)
export M2_HOME=$(jtools maven home)
