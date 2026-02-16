
enable_bracketed_mode() {
    printf "\e[?2004h"
}

disable_bracketed_mode() {
    printf "\e[?2004l"
}
zle -N enable_bracketed_mode
zle -N disable_bracketed_mode

bindkey "\e[200~" disable_bracketed_mode
bindkey "\e[201~" none
