## Instruction

1. Setup Git credentials using 1password
2. Run install script

```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/brian-tran-dev/.config/HEAD/install.sh)"
```

### Fish Shell
```
whereis fish | tee >(less)
less /etc/shells
echo "" > /etc/shells
chsh -s /usr/local/bin/fish
```
