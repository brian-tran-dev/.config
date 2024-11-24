!/bin/sh

cwd=$(pwd)

# Install Git
sudo apt update
sudo apt install git

mkdir -p $HOME/.config
cd $HOME/.config
# Download config files
git init
git config --local user.name "Brian Tran"
git config --local user.email "khoaphananhtran@gmail.com"
git config --local push.autoSetupRemote true
git remote add origin git@github.com:brian-tran-dev/.config.git $HOME/
git pull origin master
# add EditorConfig to $HOME
cp -T .editorconfig $HOME/.editorconfig
# add fonts
mkdir -p $HOME/.local/share/fonts
#cp $HOME/.config/my_share/fonts/*.tff $HOME/.local/share/fonts/
#fc-cache -f -v
cd $cwd

# Install CURL
sudo apt install curl

# Install Wezterm
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /etc/apt/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/etc/apt/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo apt update
sudo apt install -y wezterm-nightly
ln -s $HOME/.config/wezterm/init.lua $HOME/.wezterm.lua

# Install Fish Shell
sudo apt install -y software-properties-common
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish
chsh -s $(cat /etc/shells | grep fish)

# Instal utilities
sudo apt install -y ffmpeg
sudo apt install -y p7zip-full
sudo apt install -y jq

# Install Deno
curl -fsSL https://deno.land/install.sh | sh

# Install Bun
curl -fsSL https://bun.sh/install | bash

# Install flatpak
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.github.IsmaelMartinez.teams_for_linux

fish
