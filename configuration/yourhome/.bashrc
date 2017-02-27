
[[ $- != *i* ]] && return

export LANG=en_US.utf8
export SHELL=zsh 
export NNTPSERVER="news.epita.fr"
export EDITOR=vim
LS_COLORS=$LS_COLORS:'di=1;36:' ; export LS_COLORS
BLEU="\[\e[0;36m\]"
WHITE="\[\e[m\]"
alias ls='ls -alh --color=auto '
alias i3lock='~/afs/lock.sh'
alias clone_acu='~/afs/clone_acu.sh'
alias clone_github='~/afs/clone_github.sh'
alias i3lockR='~/afs/lockR.sh'
alias rms='~/scripts/scripts/remove.sh'
alias rename="i3-msg 'rename workspace to"
alias ks='ls'
alias make='t && make'
alias t='echo -e "\033[33;7m...............NEXT.................\033[0m"'
alias gitl='git log --graph --oneline --all --decorate'
#'import -window root ~/afs/lock5.png | convert ~/afs/lock5.png -blur 5x3 ~/afs/lock5.png | i3lock -i ~/afs/lock5.png'
alias cpl='gcc -o main -Wall -Wextra -Werror -std=c99 -pedantic -g'
alias MakeM='./~/MakeM.sh"'
alias logssh='eval $(ssh-agent); ssh-add'
#PS1=$BLEU'[\u@\h \W]\$ '$WHITE
function run()
{
  branch="$(git branch 2> null | grep ^* | colrm 1 2)"
  PS1="\[\033[38;5;14m\]\
[\
\[$(tput sgr0)\]\
\[\033[38;5;1m\]\
\$?\
\[$(tput sgr0)\]\
\[\033[38;5;14m\]\
]\
\[$(tput sgr0)\]\
\[\033[38;5;15m\]\
\[$(tput sgr0)\]\
\[\033[38;5;14m\]\
[ \
\[$(tput sgr0)\]\
\[\033[38;5;15m\]\
\[$(tput sgr0)\]\
\[\033[38;5;14m\]\
\W - \
\[\033[33m\]\
$branch \
\[\033[38;5;14m\]\
 ]\
\[$(tput sgr0)\]\
\[\033[38;5;15m\]\
 > \
\[$(tput sgr0)\]"
}

function run2()
{
  branch="$(git branch 2> /dev/null | grep ^* | colrm 1 2)"
  PS1="\[\033[38;5;14m\]\
[\
\[\033[38;5;1m\]\
\$?\
\[\033[38;5;14m\]\
]\
[ \
\W - \
\[\033[33m\]\
$branch\
\[\033[38;5;14m\]\
 ]\
\[$(tput sgr0)\]\
 > "
}


#PS1+="\e[5m"
PROMPT_COMMAND=run2
