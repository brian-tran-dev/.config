## Instruction

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
