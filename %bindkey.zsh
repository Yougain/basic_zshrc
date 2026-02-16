
if [ ! -e "$HOME/.zsh_bindkey" ];then
	echo '
#bindkey settings

bindkey "\e[H" beginning-of-line # Home gets to line head
bindkey "\e[F" end-of-line # End gets to line end
bindkey "\eOH" beginning-of-line # Home gets to line head
bindkey "\eOF" end-of-line # End gets to line end
bindkey "^[[1~" beginning-of-line # Home gets to line head
bindkey "^[[4~" end-of-line # End gets to line end
bindkey "^[[3~" delete-char # Del
bindkey "^[[5~" beginning-of-history
bindkey "^[[6~" end-of-history
bindkey "^[[5;2~" history-beginning-search-backward-end
bindkey "^[[6;2~" history-beginning-search-forward-end
bindkey "^[[1;2A" history-beginning-search-backward-end
bindkey "^[[1;2B" history-beginning-search-forward-end
bindkey -s "^[s" "resudo\n" #for sudo
bindkey -s "^[S" "resu\n" #for su

# historical backward/forward search with linehead string binded to ^P/^N
#
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
bindkey "\\ep" history-beginning-search-backward-end
bindkey "\\en" history-beginning-search-forward-end

# reverse menu completion binded to Shift-Tab
#
bindkey "\e[Z" reverse-menu-complete
' > $HOME/.zsh_bindkey
fi

. $HOME/.zsh_bindkey
