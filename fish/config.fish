if status is-interactive
	bind -M insert \c\t accept-autosuggestion
end

set fish_greeting

if not command -q eza
	brew install eza
end

if not command -q brew
	# bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
end
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

if not command -q fzf
	brew install fzf
end
fzf --fish | source

if not command -q starship
	brew install starship
end
starship init fish | source

if not command -q zoxide
	brew install zoxide
end
zoxide init fish | source
