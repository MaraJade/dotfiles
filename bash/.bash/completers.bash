#!/bin/bash

# Autocomplete for Homebrew:
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  . $(brew --prefix)/etc/bash_completion
#fi

# Autocomplete for Node:
#if [[ -e ~/.node-completion ]]; then
#  shopt -s progcomp
#  for f in $(command ls ~/.node-completion); do
#    f="$HOME/.node-completion/$f"
#    test -f "$f" && . "$f"
#  done
#fi

# Autocomplete for npm:
if [[ `which npm` ]]; then
  eval "$(npm completion 2>/dev/null)"
fi

# Autocomplete for pip:
if [[ `which pip` ]]; then
  eval "`pip completion --bash`"
fi

# Autocomplete for Grunt:
#if [[ `which grunt` ]]; then
#  eval "$(grunt --completion=bash)"
#fi

# Bash autocomplete
#if ! shopt -oq posix; then
#  if [ -f /usr/share/bash-completion/bash_completion ]; then
#    . /usr/share/bash-completion/bash_completion
#  elif [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#  fi
#fi

source ~/.scripts/.git-completion.bash
