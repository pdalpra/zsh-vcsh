source $HOME/.p10k.zsh

# Theme
zinit light romkatv/powerlevel10k

# Oh My Zsh
zinit wait'1' lucid light-mode for \
  OMZL::completion.zsh \
  OMZL::directories.zsh \
  OMZL::git.zsh

zinit lucid light-mode for \
  OMZL::history.zsh \
  OMZL::key-bindings.zsh \
  OMZL::termsupport.zsh

# Zsh plugins
zinit wait'' lucid light-mode for \
  OMZP::command-not-found \
  OMZP::fancy-ctrl-z \
  OMZP::npm \
  OMZP::sudo \
  OMZP::zsh-interactive-cd \
  agkozak/zsh-z \
  zsh-users/zsh-syntax-highlighting

# Zsh completions
zinit wait'' as'completion' lucid light-mode for \
  OMZP::cargo \
  OMZP::httpie \
  OMZP::rustup \
  zsh-users/zsh-completions

# Binaries
zinit wait'' as'program' lucid light-mode for \
  ver'v1.3.0' pick'diff-so-fancy' so-fancy/diff-so-fancy
