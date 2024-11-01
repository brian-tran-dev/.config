# Install Git
sudo apt update
sudo apt install git

# Download config files
git init
git config --global user.name "Brian Tran"
git config --global user.email "khoaphananhtran@gmail.com"
git remote add origin git@github.com:brian-tran-dev/.config.git
git pull origin master

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

user_env_d = "$HOME/.config/environment.d"
if [ !(-d $user_env_d ) ]; then
	mkdir -p $user_env_d
	echo "WEZTERM_CONFIG_FILE=\"$HOME/.config/wezterm/init.lua\"" > "$user_env_d/wezterm.conf"
end
