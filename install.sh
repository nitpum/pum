#!/bin/bash

## Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NO_COLOR='\033[0m'
CLEAR_LINE='\r\033[K\r'
CLEAR_SCREEN='\033c'

# Check is project exists
if [ -d ~/pum ]; then
  echo "${YELLOW}Found ~/pum directory"
  
  cd ~/pum
  if ! git status 2>&1 | grep -i 'not a git repository' > /dev/null ; then
    echo "${GREEN}✔ pum already cloned${NO_COLOR}"
  fi
else
  mkdir -p ~/pum

  if ! [ -x "$(command -v curl)" ]; then
    echo "${YELLOW}⚠ Not found curl${NO_COLOR}"
    echo "Installing curl"
    apt update
    apt install curl
  fi


  echo "📦 Cloning project..."
  cd ~/pum
  git clone git@github.com:nitpum/pum.git .
fi

# Create shortcut
if [ -f ~/bin/pum.sh ]; then
  echo "✔ Path already setup"
else
  echo "🔥 Setup path..."
  mkdir -p ~/bin
  mv ~/pum/pum.sh ~/bin
  chmod +x ~/pum/pum.sh
fi
