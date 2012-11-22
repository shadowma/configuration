#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
#PS2='> '
#PS3='> '
#PS4='+ '

if [[ ${EUID} == 0 ]] ; then
	PS1='\[\e[0;31m\][\u@\h \[\e[m\]\[\e[1;34m\]\W\[\e[0;31m\]]\[\e[m\]\[\e[0;31m\]\$ \[\e[0m\]'
else
	PS1='\[\e[0;32m\][\u@\h \[\e[m\]\[\e[1;34m\]\W\[\e[0;32m\]]\[\e[m\]\[\e[1;32m\]\$ \[\e[0m\]'
fi



case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
                                                        
    ;;
  screen)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
    ;;
esac



[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

export EDITOR="vim"
alias pacman="pacman-color"
alias rm="rm -i"
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
export CCACHE_DIR="/tmp/ccache"
