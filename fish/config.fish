if status is-interactive
	bind -M insert \c\t accept-autosuggestion
end

set fish_greeting

if not test -e "/home/linuxbrew/.linuxbrew/bin/brew"
	echo "Installing brew..."
	bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
end
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

if not command -q nvim
	echo "Installing neovim..."
	brew install neovim
end

if not command -q eza
	echo "Installing eza..."
	brew install eza
end

if not command -q fzf
	echo "Installing fzf..."
	brew install fzf
end
fzf --fish | source

if not command -q starship
	echo "Installing starship..."
	brew install starship
end
starship init fish | source

if not command -q zoxide
	echo "Installing zoxide..."
	brew install zoxide
end
zoxide init fish | source

if not command -q bat
	echo "Installing batcat..."
	brew install bat
end
