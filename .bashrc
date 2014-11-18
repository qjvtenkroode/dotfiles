# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

TERM=xterm-color
alias ll='ls -l'
alias la='ls -la'
alias tmux="TERM=screen-256color-bce tmux"

## disable those annoying ._ files in when calling tar ##
export COPYFILE_DISABLE=true

## Colors ##
export CLICOLOR=1
export LSCOLORS='cxfxcxdxbxegedabagacad'
## grep with color ##
export GREP_OPTIONS='--color=auto'

## pip ##
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
