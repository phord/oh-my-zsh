# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="phord"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# CLI syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern regexp root)
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=cyan,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=cyan,bold,underline'
ZSH_HIGHLIGHT_STYLES[function]='fg=cyan,bold,standout'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=yellow,bold'

#ZSH_HIGHLIGHT_STYLES[cursor]='bg=blue'



# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
# Warning:  zsh-syntax-higlighting must be last
plugins=(git common-aliases dircycle docker history sudo zsh-autosuggestions zsh-syntax-highlighting)
# gitfast -- enabling this breaks my change-detection.  :-(
#zsh-syntax-highlighting)
#command-not-found)

source $ZSH/oh-my-zsh.sh

setopt nonomatch

### Fix 'less' default switches
export LESS=-FRX

# phtest shortcut
alias phtest='/home/phord/git/phtest/phtest/phtest'

#Make my git projects appear as first-class chdir targets
export CDPATH=/home/phord/git:/home/phord

# python path point to pure_tools repo parent
#export PYTHONPATH=/home/phord/git:${PYTHONPATH}

## CLOUD-53319
#source $HOME/bin/agent-fix

#wgcw?
source $HOME/.profile

PATH=$HOME/bin:$HOME/.local/bin:$PATH

# Use lesspipe from git@github.com:wofr06/lesspipe.git
LESSOPEN="|/usr/local/bin/lesspipe.sh %s"; export LESSOPEN

# Control+Up/Down moves through history by entries, not by lines
bindkey "^[[1;5A" up-history
bindkey  "^[[1;5B" down-history

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
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

# SDKMAN bullshit
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/phord/.sdkman"
[[ -s "/home/phord/.sdkman/bin/sdkman-init.sh" ]] && source "/home/phord/.sdkman/bin/sdkman-init.sh"

## Python virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

#pyenv init
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Some cybertron bullshit
eval "$(direnv hook zsh)"

# export keymaster public keys into place
for f in keymaster-ed25519- keymaster-rsa- ; do
	ssh-add -L | grep $f > /home/phord/.ssh/tmp/${f}${USER}.pub
done
