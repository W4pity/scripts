export LANG=en_US.utf8
export LOC="/home/w4pity"
export NNTPSERVER="news.epita.fr"
export EDITOR=vim
LS_COLORS=$LS_COLORS:'di=1;36:' ; export LS_COLORS
alias ls='ls -alh --color=auto '
alias i3lock='~/afs/lock.sh'
alias clone_acu='~/afs/clone_acu.sh'
alias clone_github='~/afs/clone_github.sh'
alias i3lockR='~/afs/lockR.sh'
alias rms='~/scripts/scripts/remove.sh'
alias rename="i3-msg 'rename workspace to"
alias musique="chromium http://www.deezer.com/fr/ & pavucontrol &"
alias titite="firefox -new-window https://discordapp.com/channels/@me/ & 
firefox -new-window https://web.skype.com/fr/ &"
alias mail="thunderbird &"
alias code="~/scripts/scripts/lunchWork.sh"
alias ks='ls'
alias make='t && make'
alias t='echo -e "\033[33;7m...............NEXT.................\033[0m"'
alias gitl='git log --graph --oneline --all --decorate'
#'import -window root ~/afs/lock5.png | convert ~/afs/lock5.png -blur 5x3 ~/afs/lock5.png | i3lock -i ~/afs/lock5.png'
alias cpl='gcc -o main -Wall -Wextra -Werror -std=c99 -pedantic -g'
alias MakeM='./~/MakeM.sh"'
alias s='source ~/.zshrc'
alias logssh='eval $(ssh-agent); ssh-add'
#PS1=$BLEU'[\u@\h \W]\$ '$WHITE
bindkey '^R' history-incremental-search-backward
cd $LOC

autoload -U colors && colors


function izitgit () {
    #if [[ -d .git ]] ; then
        gitb="[$(git branch 2> /dev/null | grep "^*" | colrm 1 2)]"
        #if [[ $?  -ne 0 ]] || [[ -z "$gitb" ]] ; then
         #   return
        #fi
    #else
   #     gitb=""
    #fi
    print $gitb
}

function folder()
{
  ee="[$(pwd | rev | cut -d"/" -f1  | rev)]"
  print $ee
}

function setprompt()
{
PROMPT="[%(?.$fg[green].$fg[red])% "
PROMPT+="%?$reset_color]$fg[cyan]$(folder)$reset_color"
PROMPT+="$fg[yellow]$(izitgit)$reset_color
> "
LOC=$(pwd)
}
RPROMPT="%T"

precmd() { eval setprompt }
setprompt
setopt prompt_subst
autoload -U promptinit
promptinit
#zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==02=01}:${(s.:.)LS_COLORS}")'
zstyle ':completion:*:parameters'  list-colors '=*=32'

zstyle ':completion:*:builtins' list-colors '=*=1;38;5;142'
zstyle ':completion:*:aliases' list-colors '=*=2;38;5;128'
zstyle ':completion:*:*:kill:*' list-colors '=(#b) #([0-9]#)*( *[a-z])*=34=31=33'
zstyle ':completion:*' menu select list-colors "=(#b) #([^ ]#)*=$color[white]=$color[yellow]=$color[red]"
zstyle ':completion:*:*:git:*' script /usr/local/etc/bash_completion.d/git-completion.bash
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit && compinit
zmodload -i zsh/complist
