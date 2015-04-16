skip_global_compinit=1

# Required by Sphinx
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

PATH=$PATH:$HOME/.scripts

# OS-specific configuration
eval "$(os-detect)"

if [[ $OS == "OSX" ]]; then
  SHELL=/usr/local/bin/zsh
  eval "$(boot2docker shellinit 2> /dev/null)"
  PATH=$PATH:$HOME/.bin/docker-forward/bin
  eval "$(docker-forward init -)"
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
eval "$(jtools maven home)"

# Set JAVA_HOME with currently selected JVM using jenv
export JAVA_HOME=$(jenv javahome)
