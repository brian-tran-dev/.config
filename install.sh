!/bin/bash

# Install CURL
sudo apt install curl

# Install Wezterm
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /etc/apt/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/etc/apt/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo apt update
sudo apt install wezterm-nightly

# Install Fish Shell
sudo apt install -y software-properties-common
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish
