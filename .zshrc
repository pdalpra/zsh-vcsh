###################
#  Antigen setup  #
###################

antigen use oh-my-zsh

antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

antigen bundle docker
antigen bundle sudo
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions src
antigen bundle git-extras
antigen bundle rupa/z

antigen apply

source ~/.zsh-aliases
