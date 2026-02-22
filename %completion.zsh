## Completion configuration
#
fpath=(${HOME}/.zsh/functions/Completion ${fpath})
autoload -Uz compinit
#compinit -u
compinit
zstyle ':completion:*:default' menu select=2

