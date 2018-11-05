#please see inputrc file as well
#set -o vi

. /etc/profile

if [ $HOSTNAME == 'development02' ] ; then
    echo -e "sourcing development_utilities\n\n"
    . ~/.development_utilities
fi

if [ -f ~/.bash_utilities ]; then
    . ~/.bash_utilities
fi 

if [ -f ~/.git_utilities ]; then
    . ~/.git_utilities
fi

if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi

alias g='git '
# git untracked, modified files
#alias gfu='git diff --name-status --diff-filter=U '
#alias gfm='git diff --name-status --diff-filter=M '
alias gfu='git ls-files -u'
alias gfm='git ls-files -m'

alias gd='git diff '
alias gdc='git diff --cached '
alias gl='git log '

# History related configurations
export histcontrol="erasedups:ignoreboth"
export HISTFILESIZE=500000
export HISTSIZE=100000
#export HISTIGNORE="&:[ ]*:exit"
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "


shopt -s histappend
shopt -s cmdhist
export PROMPT_COMMAND="history -a"

export DBI_PASS=ti_hacker
export PROMPT_DIRTRIM=1

# If you are diehard user of vim then you can use below line as pager 
#export PAGER="/usr/bin/vim -f -R -"
export PAGER=less
export TERM=xterm-256color



export PS1='$(printf "%*s\r%s" $(( COLUMNS-1 )) " $(git branch 2>/dev/null | grep '^*' | sed s/..//)* " "\u@\h:\w$ ")'

[ -r /home/amitanand/.byobu/prompt ] && . /home/amitanand/.byobu/prompt   #byobu-prompt#

