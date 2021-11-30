#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin/statusbar:$PATH"

alias ls='ls --color=auto'
alias todo='vim ~/.local/share/todo'

c0='\[\033[01;30m\]'
c1='\[\033[01;31m\]'
c2='\[\033[01;32m\]'
c3='\[\033[01;33m\]'
c4='\[\033[01;34m\]'
c5='\[\033[01;35m\]'
c6='\[\033[01;36m\]'
c7='\[\033[01;37m\]'

PS1="$c1[$c2\u$c3@$c4\h $c5\W$c1]$c1\$\[\033[00m\] "

TERMINAL=alacritty
TERM=xterm-256color
BROWSER=chromium

extract () {
   if [ -f $1 ] ; then
      case $1 in
         *.tar.bz2)   tar xjf $1      ;;
         *.tar.gz)   tar xzf $1      ;;
         *.bz2)      bunzip2 $1      ;;
         *.rar)      rar x $1      ;;
         *.gz)      gunzip $1      ;;
         *.tar)      tar xf $1      ;;
         *.tbz2)      tar xjf $1      ;;
         *.tgz)      tar xzf $1      ;;
         *.zip)      unzip $1      ;;
         *.Z)      uncompress $1   ;;
         *)         echo "'$1' cannot be extracted via extract()" ;;
      esac
   else
      echo "'$1' is not a valid file"
   fi
} 
