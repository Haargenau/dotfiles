#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ANSI color codes
RS="\[\033[0m\]"    # reset
HC="\[\033[1m\]"    # hicolor
UL="\[\033[4m\]"    # underline
INV="\[\033[7m\]"   # inverse background and foreground
FBLK="\[\033[30m\]" # foreground black
FRED="\[\033[31m\]" # foreground red
FGRN="\[\033[32m\]" # foreground green
FYEL="\[\033[33m\]" # foreground yellow
FBLE="\[\033[34m\]" # foreground blue
FMAG="\[\033[35m\]" # foreground magenta
FCYN="\[\033[36m\]" # foreground cyan
FWHT="\[\033[37m\]" # foreground white
BBLK="\[\033[40m\]" # background black
BRED="\[\033[41m\]" # background red
BGRN="\[\033[42m\]" # background green
BYEL="\[\033[43m\]" # background yellow
BBLE="\[\033[44m\]" # background blue
BMAG="\[\033[45m\]" # background magenta
BCYN="\[\033[46m\]" # background cyan
BWHT="\[\033[47m\]" # background white

PS1="$HC$FBLE[\u@\h $FMAG\w$FBLE]$ $RS"

# Automatically start tmux
# only if an X session is running
if [[ $DISPLAY ]]; then
    # If not running interactively, do not do anything
    [[ $- != *i* ]] && return
    [[ -z "$TMUX" ]] && exec tmux
fi

alias ls='ls --color=auto'
alias ll='ls -la'
alias deen='trans -sl de -tl en'
alias ende='trans -sl en -tl de'

# Path for ghcup
export PATH=$PATH:$HOME/.ghcup/bin/:$HOME/.cabal/bin/

# Backup the entire installation
alias sysbackup='rsync -aAXv --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home/*","/opt/*"} / /mnt/system_backup/'

# delete duplicates in bash-histroy
export HISTCONTROL=ignoreboth:erasedups

# set vim bindings
set -o vi

# set default editor 
export VISUAL=/usr/bin/vim
export EDITOR="$VISUAL"
