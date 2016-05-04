# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
umask 0002

export EDITOR=vim

alias gst='git status'
alias gpush='git push origin master'
alias gpull='git pull origin master'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

alias weather='curl http://wttr\.in/prague'
