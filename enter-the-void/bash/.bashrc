if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

export TZ=:/etc/localtime
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export CLICOLOR=1
export LS_COLORS="di=1;33:ln=35:so=31:pi=33:ex=36:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
export EDITOR=/usr/bin/nano
export BLOCKSIZE=1k

NORM="$(echo -e "\[\033[0;0m\]")"
RED="$(echo -e "\[\033[0;31m\]")"
GREEN="$(echo -e "\[\033[0;32m\]")"
YELLOW="$(echo -e "\[\033[0;33m\]")"
BLUE="$(echo -e "\[\033[0;34m\]")"
MAGENTA="$(echo -e "\[\033[0;35m\]")"
CYAN="$(echo -e "\[\033[0;36m\]")"
LIGHTGRAY="$(echo -e "\[\033[0;37m\]")"
BLACK="$(echo -e "\[\033[0;38m\]")"
DGRAY="$(echo -e "\[\033[90m\]")"
LRED="$(echo -e "\[\033[91m\]")"
LGREEN="$(echo -e "\[\033[92m\]")"
LYELLOW="$(echo -e "\[\033[93m\]")"
LBLUE="$(echo -e "\[\033[94m\]")"
LPURPLE="$(echo -e "\[\033[95m\]")"
LCYAN="$(echo -e "\[\033[96m\]")"
WHITE="$(echo -e "\[\033[97m\]")"
BDEF="$(echo -e "\[\033[49m\]")"
BBLACK="$(echo -e "\[\033[40m\]")"
BRED="$(echo -e "\[\033[41m\]")"
BGREEN="$(echo -e "\[\033[42m\]")"
BYELLOW="$(echo -e "\[\033[43m\]")"
BBLUE="$(echo -e "\[\033[44m\]")"
BMAGENTA="$(echo -e "\[\033[45m\]")"
BCYAN="$(echo -e "\[\033[46m\]")"
BLGRAY="$(echo -e "\[\033[47m\]")"
BDGRAY="$(echo -e "\[\033[100m\]")"
BLRED="$(echo -e "\[\033[101m\]")"
BLGREEN="$(echo -e "\[\033[102m\]")"
BLYELLOW="$(echo -e "\[\033[103m\]")"
BLBLUE="$(echo -e "\[\033[104m\]")"
BLMAGENTA="$(echo -e "\[\033[105m\]")"
BLCYAN="$(echo -e "\[\033[106m\]")"
BWHITE="$(echo -e "\[\033[107m\]")"


extract () {

    if [ -f $1 ] ; then
        case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi

}


prompt() {

    #PS1="${YELLOW}→${NORM} "
    PS1="${YELLOW}|${NORM} "

}

PROMPT_COMMAND=prompt


