case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth

shopt -s histappend
shopt -s checkwinsize

HISTSIZE=10000
HISTFILESIZE=20000
set -o vi

export EDITOR=nvim
export VISUAL=nvim

alias ls="ls -1shl"
alias la="ls -1Ashl"
alias ld="ls -1Ashl --ignore=[^.]*"

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval $(dircolors -b ~/.dircolors)" || eval $(dircolors -b)"
    alias ls="ls --color=auto"
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
