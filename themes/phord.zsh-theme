# from sirthias' theme
if [ "$(whoami)" = "root" ]
  then local CLR="$fg_bold[red]"
  else
    case "$(hostname)" in

      phord-[xX]1)   local CLR="$fg_bold[green]"
        ;;

      dev-phord)  local CLR="$fg_bold[blue]"
        ;;

      *)          local CLR="$bg[red]$fg_bold[white]"
        ;;
    esac
fi

# Copied from old version of tonotdo's theme. LSCOLORS modified.
PROMPT='%{'$CLR'%}%n@%m%{$reset_color%}%{$fg_no_bold[magenta]%}•%{$fg_no_bold[green]%}%3/$(git_prompt_info)%{$reset_color%}» '

# Disabled: right-hand-side clock
#RPROMPT='[%*]'

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg_no_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_no_bold[red]%}"
ZSH_THEME_GIT_PROMPT_CONFLICT="%{$fg_bold[yellow]$bg[red]%}"
ZSH_THEME_GIT_PROMPT_TIMEOUT="%{$fg_bold[yellow]%}??"

# git theming -- testing
false && {
  ZSH_THEME_GIT_PROMPT_PREFIX="-PREFIX-"
  ZSH_THEME_GIT_PROMPT_SUFFIX="-SUFFIX"
  ZSH_THEME_GIT_PROMPT_CLEAN="-CLEAN"
  ZSH_THEME_GIT_PROMPT_DIRTY="-DIRTY"
  ZSH_THEME_GIT_PROMPT_TIMEOUT="-TIMEOUT"
}

export LSCOLORS="exfxcxdxbxegedabagacad"
export LS_COLORS='no=00:fi=00:di=01;34:ln=00;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=41;33;01:ex=00;32:*.cmd=00;32:*.exe=01;32:*.com=01;32:*.bat=01;32:*.btm=01;32:*.dll=01;32:*.tar=00;31:*.tbz=00;31:*.tgz=00;31:*.rpm=00;31:*.deb=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.lzma=00;31:*.zip=00;31:*.zoo=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.tb2=00;31:*.tz2=00;31:*.tbz2=00;31:*.avi=01;35:*.bmp=01;35:*.fli=01;35:*.gif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mng=01;35:*.mov=01;35:*.mpg=01;35:*.pcx=01;35:*.pbm=01;35:*.pgm=01;35:*.png=01;35:*.ppm=01;35:*.tga=01;35:*.tif=01;35:*.xbm=01;35:*.xpm=01;35:*.dl=01;35:*.gl=01;35:*.wmv=01;35:*.aiff=00;32:*.au=00;32:*.mid=00;32:*.mp3=00;32:*.ogg=00;32:*.voc=00;32:*.wav=00;32:'
