# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

## add /usr/local/sbin to PATH
PATH=$PATH:/usr/local/sbin

TERM=xterm-color
alias ll='ls -l'
alias la='ls -la'
alias tmux="TERM=screen-256color-bce tmux"

## tasks
alias t='python ~/playground/t/t.py --task-dir ~/.tasks --list private'
alias tw='python ~/playground/t/t.py --task-dir ~/.tasks --list work'
export PS1="[$(tw | wc -l | sed -e's/ *//')][$(t | wc -l | sed -e's/ *//')] $PS1"

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
