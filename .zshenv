skip_global_compinit=1

enable_sub() {
  PATH=$PATH:$HOME/.bin/$1/bin
  eval "$($1 init -)"
}

# Required by Sphinx
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

PATH=$PATH:$HOME/.scripts

# OS-specific configuration
eval "$(os-detect)"

if [[ $OS == "OSX" ]]; then
  SHELL=/usr/local/bin/zsh
  eval "$(docker-machine env boot2docker-vm)"
  enable_sub docker-forward
fi

source $HOME/.bin/antigen/antigen.zsh

PATH=/usr/local/sbin:$PATH # Homebrew

enable_sub jtools
enable_sub jenv

# Set PATH and env vars from jtools
PATH=$PATH:$(jtools path)
eval "$(jtools maven home)"

# Set JAVA_HOME with currently selected JVM using jenv
export JAVA_HOME=$(jenv javahome)

# Alias git to hub
eval "$(hub alias -s)"

# Clean up
unset -f enable_sub

[[ -f $HOME/.zsh-custom ]] && . $HOME/.zsh-custom
