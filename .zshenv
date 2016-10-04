skip_global_compinit=1

enable_sub() {
  PATH=$PATH:$HOME/.bin/$1/bin
  eval "$($1 init -)"
}

export TERM="xterm-256color"

# Required by Sphinx
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.scripts:$PATH
export PATH=$HOME/.bin/diff-so-fancy:$PATH
export JAVA_HOME=/usr/lib/jvm/java-8-jdk/
export M2_HOME=/opt/maven

# OS-specific configuration
eval "$(os-detect)"

if [[ $OS == "OSX" ]]; then
  SHELL=/usr/local/bin/zsh
  eval "$(docker-machine env boot2docker-vm)"
  enable_sub docker-forward
fi

source $HOME/.bin/antigen/antigen.zsh

PATH=/usr/local/sbin:$PATH # Homebrew

# Alias git to hub
eval "$(hub alias -s)"

# Clean up
unset -f enable_sub

. $HOME/.dockerfunc
. $HOME/.bullet-train

[[ -f $HOME/.zsh-custom ]] && . $HOME/.zsh-custom
