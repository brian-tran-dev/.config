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
	brew install ripgrep
	brew install fd
	brew install yazi
else
	eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
end

# Install NodeJS
if test -z (fisher list nvm)
	fisher install jorgebucaran/nvm.fish
	nvm install lts
	set --universal nvm_default_version lts
end

if test -z (nvm list)
	nvm install lts
	set --universal nvm_default_version lts
end

fzf --fish | source
starship init fish | source
zoxide init fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
