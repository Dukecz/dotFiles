# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
umask 0002

export EDITOR=nvim

alias zendlog='sudo tail -f /var/log/zend/php.log'
alias phplog='sudo tail -f /var/log/httpd/error_log'
alias httpreload='sudo systemctl reload httpd'
alias httprestart='sudo systemctl restart httpd'

alias phplog56='sudo tail -f /var/opt/remi/php56/log/php-fpm/www-error.log'
alias phplog71='sudo tail -f /var/opt/remi/php71/log/php-fpm/www-error.log'
alias phplog73='sudo tail -f /var/opt/remi/php73/log/php-fpm/www-error.log'
alias phplog74='sudo tail -f /var/opt/remi/php74/log/php-fpm/www-error.log'
alias phplog81='sudo tail -f /var/opt/remi/php81/log/php-fpm/www-error.log'

alias gst='git status'
alias gpush='git push origin'
alias gpull='git fetch origin --prune && git pull origin'
alias grpull='git fetch origin && git pull --rebase origin'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias composer56='php56 /usr/bin/composer'
alias composer71='php71 /usr/bin/composer'
alias composer73='php73 /usr/bin/composer'
alias composer74='php74 /usr/bin/composer'
alias composer81='php81 /usr/bin/composer'

alias certinfo='openssl x509 -enddate -subject -noout -in'

alias maps='telnet mapscii.me'

grpullstash()
{
    git stash && gitrpull "$1" && git stash pop;
}

docker_run_named_image()
{
    docker run --name $1 --rm --entrypoint="" -it $2 bash
}
