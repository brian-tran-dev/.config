if status is-interactive
	bind -M insert \c\t accept-autosuggestion
end

set fish_greeting

if not test -e "/home/linuxbrew/.linuxbrew/bin/brew"
	echo "Installing brew..."
	bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
	brew install neovim
	brew install eza
	brew install fzf
	brew install starship
	brew install zoxide
	brew install bat
else
	eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
end

fzf --fish | source
starship init fish | source
zoxide init fish | source
