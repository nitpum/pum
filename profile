#!/bin/bash
export PUM_DIR=~/pum

export PATH=$PATH:$PUM_DIR

alias pum="source $PUM_DIR/main"

# Kill ssh agent on logout
trap "kill $SSH_AGENT_PID" 0