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
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(zsh-history-enquirer git common-aliases dircycle docker history sudo )
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
export PYTHONPATH=/home/phord/git:${PYTHONPATH}

## CLOUD-53319
#source $HOME/bin/agent-fix

#wgcw?
source $HOME/.profile
