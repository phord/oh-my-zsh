
setopt INTERACTIVE_COMMENTS   # Allow hash as comment in console

# Report execution time of any command taking longer than 10 seconds
export REPORTTIME=10

# Cool move command; works like DOS rename, but better.  ie. zmv *.c *.cpp
autoload zmv


# ESC-E edits command line in vim
autoload      edit-command-line
zle -N        edit-command-line
bindkey '\ee' edit-command-line
export VISUAL='/usr/bin/vim'
export EDITOR='/usr/bin/vim'

# Support more key combos? (autoload zkbd)
unsetopt MULTIBYTE

bindkey '[1;5D' backward-word
bindkey '[1;5C' forward-word

# Belongs elsewhere?
export CCACHE=ccache

# Up/Down arrows search history for first word on cmdline
bindkey '^[OA' up-line-or-search
bindkey '^[OB' down-line-or-search
