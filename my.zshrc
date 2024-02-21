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
plugins=(git)
#zsh-syntax-highlighting)
#command-not-found)

source $ZSH/oh-my-zsh.sh

setopt nonomatch

# Customize to your needs...
#export JAVA_HOME=/usr/lib/jvm/jre1.6.0_25

### TODO: chain to .zshrc-local

export PURITY_SRC=$HOME/git/purity
export PATH=$PURITY_SRC/pb/bin:$PATH
export PYTHONPATH=$PURITY_SRC/pb/pb-py
alias pb="$PURITY_SRC/pb/bin/pb"

export LESS=-FRKSX

#Deprecated: Orchestrator virtualenv: https://wiki.purestorage.com/display/psw/Orchestrator
#export WORKON_HOME=$HOME/.virtualenvs
#source /usr/local/bin/virtualenvwrapper.sh

# Grep zip files by default, no line numbers
alias rg='rg -zN'

source ${HOME}/bin/pbtools

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/phord/.sdkman"
[[ -s "/home/phord/.sdkman/bin/sdkman-init.sh" ]] && source "/home/phord/.sdkman/bin/sdkman-init.sh"

## Python virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

