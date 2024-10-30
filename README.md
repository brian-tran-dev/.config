# Local Config

```
bash install.sh
```

### Fish Shell
```
whereis fish | tee >(less)
less /etc/shells
echo "" > /etc/shells
chsh -s /usr/local/bin/fish
```

### Wezterm
/etc/environment
```
WEZTERM_CONFIG_FILE="/home/brian/.config/wezterm/init.lua"
```
