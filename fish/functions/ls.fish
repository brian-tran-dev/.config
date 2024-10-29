function ls
	set -lx EZA_STRICT true
	set -lx EZA_ICON_SPACING 1
	eza --icons="always" --grid -A --sort=type $argv
end
