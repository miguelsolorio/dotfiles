# Enable ANSI colors sequences to distinguish file types
export CLICOLOR=1

# Value of this variable describes what color to use for which attribute
export LSCOLORS=GxFxCxDxBxegedabagaced

# Load dotfiles:
for file in ~/.{shortcuts,aliases}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;