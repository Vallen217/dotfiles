# .bashrc

# Aliases
alias sudo='sudo '
alias rm='rm -rI' # an alias written in the blood of a root directory
alias mkdir='mkdir -pv'
alias ls='ls -aCF'
alias ..='cd ..'
alias wget='wget -c'
alias df='df -Tha --total'
alias free='free -lt'
alias cmatrix='cmatrix -C blue'	# crucial to a workflow


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc
