# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="phord"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# CLI syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git save-dirs )
#zsh-syntax-highlighting)
#command-not-found)

source $ZSH/oh-my-zsh.sh

setopt nonomatch

# Customize to your needs...
#export JAVA_HOME=/usr/lib/jvm/jre1.6.0_25

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
