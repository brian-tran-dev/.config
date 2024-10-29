if status is-interactive
	bind -M insert \c\t accept-autosuggestion
end

set fish_greeting
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
fzf --fish | source
starship init fish | source
zoxide init fish | source
