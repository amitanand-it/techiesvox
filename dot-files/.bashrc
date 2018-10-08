#please see inputrc file as well
#set -o vi

REPO="REPO6678"
if [ -d /mnt/raid/shared/git-changes/$REPO ]; then
	cd /mnt/raid/shared/git-changes/$REPO
fi

if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi

alias myrepo="BYOBU_DEVNAME=amitanand;cd /mnt/raid/shared/git-changes/$REPO"
alias sessions='tmux ls'
alias kill-session='tmux kill-session -t'

alias g='git '
# git untracked, modified files
#alias gfu='git diff --name-status --diff-filter=U '
#alias gfm='git diff --name-status --diff-filter=M '
alias gfu='git ls-files -u'
alias gfm='git ls-files -m'

alias gd='git diff '
alias gdc='git diff --cached '
alias gl='git log '

alias myemail='/bin/cp ~/Email.pm ./perl_modules_02/B2B/Email.pm && ./stopall && ./startall '

alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'

# Now a function has been made in bashrc for more utility features 
. /etc/profile
. ~/.git_functions
. ~/.my_bash_tools
. ~/.profile

#alias psql="psql -h 127.0.0.1 -p 5432 -Uuser01 test_db -w"

export histcontrol="erasedups:ignoreboth"
export HISTFILESIZE=500000
export HISTSIZE=100000
#export HISTIGNORE="&:[ ]*:exit"
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "


shopt -s histappend
shopt -s cmdhist
export PROMPT_COMMAND="history -a"

export PROMPT_DIRTRIM=1

# If you are diehard user of vim then you can use below line as pager 
#export PAGER="/usr/bin/vim -f -R -"
export PAGER=less
export TERM=xterm-256color


export PS1='$(printf "%*s\r%s" $(( COLUMNS-1 )) " $(git branch 2>/dev/null | grep '^*' | sed s/..//)* " "\u@\h:\w$ ")'

[ -r /home/amitanand/.byobu/prompt ] && . /home/amitanand/.byobu/prompt   #byobu-prompt#

