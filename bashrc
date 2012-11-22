#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
PS1='\[\e[0;32m\][\u@\h \[\e[m\]\[\e[1;34m\]\W\[\e[0;32m\]]\[\e[m\]\[\e[1;32m\]\$ \[\e[0m\]'

export BUNDLE_PATH="`ruby -rubygems -e "puts Gem.user_dir"`"
export PATH=$PATH:$(ruby -rubygems -e "puts Gem.user_dir")/bin
