PATH="$PATH:/home/offworld/bin"

export TZ=:/etc/localtime
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export CLICOLOR=1
export LS_COLORS="di=31:ln=32:so=33:pi=36:ex=35:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

export EDITOR=vim
export PAGER=less
export NNN_OPENER=xdg-open
export NNN_DE_FILE_MANAGER=pcmanfm
export NNN_COPIER=~/.scripts/copier


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash


[ -z "$PS1" ] && return

PS1='\[\033[01;31m\]\w \$\[\033[00m\] '

