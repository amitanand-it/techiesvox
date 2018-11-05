#!/bin/bash 

# if user is not root, pass all commands via sudo #
if [ $UID -ne 0 ]; then
    alias reboot='sudo reboot'
    alias update='sudo apt-get update'
fi

# Now a function has been made in bashrc for more utility features 
#alias fn="find -iname 2>/dev/null" 

# byobu related alias 
alias sessions='tmux ls'
alias kill-session='tmux kill-session -t'


alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias cd..='cd ..' 
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias mkdir='mkdir -pv'
alias c='clear'
alias mount='mount |column -t' 
alias mounted='mount | column -t | grep /dev/sd' 
alias h='history'
alias j='jobs -l'
alias nowtime='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'
alias rm='rm -I --preserve-root'
alias mv='mv -i' 
alias cp='cp -i' 
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias wget='wget -c'
alias df='df -h'
alias du='du -ch'
alias bigfiles="find . -type f 2>/dev/null | xargs du -a 2>/dev/null | awk '{ if ( \$1 > 5000) print \$0 }'"
alias verybigfiles="find . -type f 2>/dev/null | xargs du -a 2>/dev/null | awk '{ if ( \$1 > 500000) print \$0 }'"
alias psme='ps -ef | grep $USER --color=always '
alias lf="ls -d */"
alias ll='ls -lAh' 
alias l.='ls -d .* --color=auto'
alias lx='ls -lXBh'         #  Sort by extension.
alias lt='ls -ltrh'         #  Sort by date, most recent last.
alias lk='ls -lSrh'         #  Sort by size, biggest last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

alias tarc='tar cvf '
alias tarx='tar xvf '
alias tart='tar tvf '



