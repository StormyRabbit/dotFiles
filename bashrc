#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PATH="$PATH:/$HOME/bin"
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
setxkbmap se
# Import colorscheme from 'wal'
(wal -r &)

#CVS vars
export CVSROOT=$HOME/Projects/LinuxUtvecklingsMiljo/topic3/cvs/cvsroot
export CVSEDITOR=vim
