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
alias phplog83='sudo tail -f /var/opt/remi/php83/log/php-fpm/www-error.log'

alias gst='git status'
alias gpush='git push origin'
alias gpull='git fetch origin --prune && git pull origin'
alias grpull='git fetch origin --prune && git pull --rebase origin'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias phpmemory='php -d memory_limit=6G'
alias phpmemory56='php56 -d memory_limit=6G'
alias phpmemory71='php71 -d memory_limit=6G'
alias phpmemory73='php73 -d memory_limit=6G'
alias phpmemory74='php74 -d memory_limit=6G'
alias phpmemory81='php81 -d memory_limit=6G'
alias phpmemory83='php83 -d memory_limit=6G'
alias phpxdebug='php -dxdebug.remote_autostart=On -dxdebug.remote_host=192.168.0.76'
alias phpxdebug56='php56 -d memory_limit=6G -dxdebug.remote_autostart=On -dxdebug.remote_host=192.168.0.76'
alias phpxdebug71='php71 -d memory_limit=6G -dxdebug.remote_autostart=On -dxdebug.remote_host=192.168.0.76'
alias phpxdebug73='php73 -d memory_limit=6G -dxdebug.remote_autostart=On -dxdebug.remote_host=192.168.0.76'
alias phpxdebug74='php74 -d memory_limit=6G -dxdebug.remote_autostart=On -dxdebug.remote_host=192.168.0.76'
alias phpxdebug81='XDEBUG_SESSION=PHPSTORM php81 -d memory_limit=6G -dxdebug.client_host=192.168.0.76'
alias phpxdebug83='XDEBUG_SESSION=PHPSTORM php83 -d memory_limit=6G -dxdebug.client_host=192.168.0.76'
alias composer56='php56 /usr/bin/composer'
alias composer71='php71 /usr/bin/composer'
alias composer73='php73 /usr/bin/composer'
alias composer74='php74 /usr/bin/composer'
alias composer81='php81 /usr/bin/composer'
alias composer83='php83 /usr/bin/composer'

alias certinfo='openssl x509 -enddate -subject -noout -in'

alias maps='telnet mapscii.me'

grpullstash()
{
    git stash && grpull "$1" && git stash pop;
}

docker_run_named_image()
{
    docker run --name $1 --rm --entrypoint="" -it $2 bash
}
