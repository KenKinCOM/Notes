alias ll='ls -alF'
alias la='ls -a'
alias cls='clear'
alias ra='ranger'
alias ex='exit'
alias nf='neofetch'
alias cdd='cd ~/Desktop'
alias cr='cd ~/Desktop;ra'
#alias python='python3'
alias sqlr='mysql -u root -p'
export HOMEBREW_NO_AUTO_UPDATE=true
export PATH=${PATH}:/usr/local/opt/python@3.9/bin
export PATH=${PATH}:/usr/local/mysql/bin
export EDITOR=/usr/local/Cellar/neovim/0.5.1_1/bin/nvim
#export PATH=${PATH}:/Library/Frameworks/Python.framework/Versions/3.9/bin
alias vim='nvim'
alias vi='nvim'

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

#fzf
export FZF_DEFAULT_OPTS='--bind ctrl-k:down,ctrl-i:up --preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_COMPLETION_TRIGGER='\'
export fzf_preview_cmd='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'
source ~/.config/zsh/completion.zsh
