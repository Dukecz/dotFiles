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

alias phplog='sudo tail -f /var/log/httpd/error_log'
alias httpreload='sudo systemctl reload httpd'
alias httprestart='sudo systemctl restart httpd'

alias gst='git status'
alias gpush='git push origin'
alias gpull='git fetch origin && git pull origin'
alias grpull='git fetch origin && git pull --rebase origin'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias phpmemory='php -d memory_limit=3G'

alias weather='curl http://wttr\.in/prague'
alias maps='telnet mapscii.me'
