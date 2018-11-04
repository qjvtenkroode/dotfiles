# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

## use vim style
set -o vi

## add /usr/local/sbin to PATH
PATH=$PATH:/usr/local/sbin

TERM=xterm-color
alias ll='ls -l'
alias la='ls -la'
alias tmux='TERM=screen-256color-bce tmux'
alias tmuxs='tmux switch -t'
alias histstats="history | awk '{print \$2 \" \" \$3}'| awk 'BEGIN {FS=\"|\"} {print \$1}'| sort | uniq -c | sort -r | head -n 25"

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

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

## Go stuff ##
export GOROOT="$(brew --prefix golang)/libexec"
export GOPATH=$HOME/playground/go
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
