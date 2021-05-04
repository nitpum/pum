#!/bin/bash
export PUM_DIR=~/pum

export PATH=$PATH:$PUM_DIR

alias dir="explorer.exe ."

alias pum="source $PUM_DIR/main"

# Enable powerline
# source $PUM_DIR/powerline

# Enable starship
# eval "$(starship init bash)"

# Kill ssh agent on logout
trap "kill $SSH_AGENT_PID" 0