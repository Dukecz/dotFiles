# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
umask 0002

