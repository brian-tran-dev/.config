## Instruction

1. Install 1password and download .ssh folder
2. Run install script

```
curl -fsSL https://raw.githubusercontent.com/brian-tran-dev/.config/HEAD/install.sh | sh
```

### Replace CapsLock with Ctrl

- Edit file /etc/default/keyboard
```
XKBOPTIONS="ctrl:nocaps"
```

### Change Default Shell to Fish

```
whereis fish | tee >(less)
less /etc/shells
echo "" > /etc/shells
chsh -s /usr/local/bin/fish
```
