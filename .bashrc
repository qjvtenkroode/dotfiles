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

prompt_git() {
	local s='';
	local branchName='';

	# Check if the current directory is in a Git repository.
	if [ $(git rev-parse --is-inside-work-tree &>/dev/null; echo "${?}") == '0' ]; then

		# check if the current directory is in .git before running git checks
		if [ "$(git rev-parse --is-inside-git-dir 2> /dev/null)" == 'false' ]; then

			# Ensure the index is up to date.
			git update-index --really-refresh -q &>/dev/null;

			# Check for uncommitted changes in the index.
			if ! $(git diff --quiet --ignore-submodules --cached); then
                s+='\xe2\x97\x8f';
			fi;

			# Check for unstaged changes.
			if ! $(git diff-files --quiet --ignore-submodules --); then
                s+='\xe2\x9c\x9a';
			fi;

			# Check for untracked files.
			if [ -n "$(git ls-files --others --exclude-standard)" ]; then
				s+='\xe2\x80\xa6';
			fi;

			# Check for stashed files.
			if $(git rev-parse --verify refs/stash &>/dev/null); then
				s+='\xe2\x9a\x91';
			fi;

            # Check if everything is up to date
            if [ -z $s ]; then
                s='\xe2\x9c\x94'
            fi;

		fi;

		# Get the short symbolic ref.
		# If HEAD isn’t a symbolic ref, get the short SHA for the latest commit
		# Otherwise, just give up.
		branchName="$(git symbolic-ref --quiet --short HEAD 2> /dev/null || \
			git rev-parse --short HEAD 2> /dev/null || \
			echo '(unknown)')";

		[ -n "${s}" ] && s=" [${s}]";

		echo -e "${1}${branchName}${2}${s}";
	else
		return;
	fi;
}

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W \[\033[0m\]~ \$(prompt_git \"\[\033[3;35m\]\" \"\[\033[0m\]\[\033[31m\]\") \[\033[0m\]\$ "

## Go stuff ##
export GOROOT="$(brew --prefix golang)/libexec"
export GOPATH=$HOME/playground/go
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
