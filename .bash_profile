# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

test -f ~/.git-autocompletion/contrib/completion/git-completion.bash && . $_

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

