###################
#  Antigen setup  #
###################

antigen use oh-my-zsh

antigen theme agnoster

antigen bundle docker
antigen bundle git
antigen bundle sublime
antigen bundle sudo
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle rupa/z

if [[ $OS == "OSX" ]]; then
	antigen bundle brew
	antigen bundle osx
fi

antigen apply
