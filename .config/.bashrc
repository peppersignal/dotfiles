#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#path
export PATH=$PATH:$HOME/.local/bin

#aliasses
alias ls='ls --color=auto'
alias v='nvim'

#command prompt
PS1='[\u@\h \W]\$ '

#pager
export PAGER="most"
