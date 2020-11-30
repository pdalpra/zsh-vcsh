skip_global_compinit=1

setopt autocd

export TERM="xterm-256color"

export GOPATH=$HOME/go
export COURSIER_BIN_DIR=$HOME/.bin/coursier

export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.bin/dev-env:$PATH
export PATH=$HOME/.bin/git-crypt:$PATH
export PATH=$COURSIER_BIN_DIR:$PATH
export PATH=/usr/lib/go/bin:$PATH
export PATH=$GOPATH/bin:$PATH

# Use Java 8 by default
eval "$(cs java --jvm adopt:1.8 --env)"

source $HOME/.bin/zinit/zinit.zsh
source $HOME/.zinit.zsh
