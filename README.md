## Instruction

1. Setup Git credentials using 1password
2. Run install script

```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/brian-tran-dev/.config/HEAD/install.sh)"
```

### Change Default Shell to Fish

```
whereis fish | tee >(less)
less /etc/shells
echo "" > /etc/shells
chsh -s /usr/local/bin/fish
```

### Replace CapsLock with Ctrl

- Edit file /etc/default/keyboard
```
XKBOPTIONS="ctrl:nocaps"
```
