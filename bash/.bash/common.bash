#!/bin/bash

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Default editor:
export EDITOR=vim

# Set XDG default variables
# Default config directory
export XDG_CONFIG_HOME=$HOME/.config
# Default cache directory
export XDG_CACHE_HOME=$HOME/.cache
# Default data directory
export XDG_DATA_HOME=$HOME/.local/share

# Required scripts:
[[ -d "$HOME/.scripts" ]] && export PATH=$HOME/.scripts:$PATH

# Custom scripts:
[[ -d "$HOME/scripts" ]] && export PATH=$HOME/scripts:$PATH

# Postgres.app
# http://postgresapp.com/
# http://stackoverflow.com/a/24684701/922323
export PATH=${PATH}:/Applications/Postgres.app/Contents/Versions/9.3/bin

# NVM: Node Version Manager
export NVM_DIR="$XDG_CONFIG_HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Perl
PATH="/home/marajade/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/marajade/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/marajade/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/marajade/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/marajade/perl5"; export PERL_MM_OPT;

# Check the window size after each command and, if necessary, update the
# values of LINES and COLUMNS:
shopt -s checkwinsize

# Turn on recursive globbing (bash 4.x):
shopt -s globstar

# Auto add ssh keys
keychain id_rsa_github
. ~/.keychain/`uname -n`-sh

# Put Android studio in path
#export PATH=~/projects/android/android-studio/bin:$PATH

# Put tldr in path
export PATH=~/bin:$PATH

# Allow GUI control center to work
export XDG_CURRENT_DESKTOP=Gnome

# Put local dirs in path
export PATH=~/.local/bin:$PATH
export PATH=~/local/bin:$PATH

# Ruby
# RVM: Ruby Version Manager
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Jekyll
export JEKYLL_VERSION=4.2.0
