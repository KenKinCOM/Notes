alias ll='ls -alF'
alias la='ls -a'
alias ra='ranger'
alias ex='exit'
alias nf='neofetch'
alias cdd='cd /Users/fuyu/Desktop'
alias cr='cd /Users/fuyu/Desktop;ra'
export HOMEBREW_NO_AUTO_UPDATE=true

#zsh vi-mode"
bindkey -v
bindkey -M vicmd "h" vi-insert
bindkey -M vicmd "i" up-line-or-history
bindkey -M vicmd "k" down-line-or-history
bindkey -M vicmd "H" vi-insert-bol
bindkey -M vicmd "j" vi-backward-char

function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
		echo -ne '\e[1 q'
	elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
		echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'
