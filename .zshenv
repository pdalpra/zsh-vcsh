skip_global_compinit=1

export TERM="xterm-256color"

export GOPATH=~/go

export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.bin/diff-so-fancy:$PATH
export PATH=$HOME/.bin/dev-env:$PATH
export PATH=$HOME/.bin/git-crypt:$PATH
export PATH=$HOME/.local/share/coursier/bin:$PATH
export PATH=/usr/lib/go/bin:$PATH
export PATH=$GOPATH/bin:$PATH

# Use Java 8 by default
eval "$(cs java --jvm adopt:1.8 --env)"

source $HOME/.bin/antigen/antigen.zsh
