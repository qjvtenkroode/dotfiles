# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

TERM=xterm-color
alias ll='ls -l'
alias la='ls -la'
alias tmux="TERM=screen-256color-bce tmux"
alias devenv="sh /Users/quincey/Documents/programming/vagrant/docker/bin/devenv.sh"

## disable those annoying ._ files in when calling tar ##
export COPYFILE_DISABLE=true

## Colors ##
export CLICOLOR=1
export LSCOLORS='cxfxcxdxbxegedabagacad'
## grep with color ##
export GREP_OPTIONS='--color=auto'

## Vagrant ##
export VAGRANT_DEFAULT_PROVIDER=parallels
