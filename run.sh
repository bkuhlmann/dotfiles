#!/bin/sh

# DESCRIPTION
# Executes the dotfiles installer.

# USAGE
# ./install.sh

# SETTINGS
set -e # Exit if any command returns non-zero.

# FUNCTIONS
source functions/utilities.sh

# EXECUTION

if [ -d "$HOME" ]; then
  echo ''

  if [ -z "$1" ]; then
    while true; do
      echo "Dotfile Options:"
      echo "  s: Show dotfiles available for install."
      echo "  i: Install dotfiles (existing files are skipped)."
      echo "  l: Link dotfiles to this project (interactive - asks by file)."
      echo "  c: Check for changes since last install/update."
      echo "  d: Delete dotfiles (interactive - asks by file)."
      echo "  q: Quit/Exit."
      echo ''
      read -p "Enter selection: " response
      echo ''
      process $response
    done
  else
    process $1
  fi

  echo ''
else
  echo "ERROR: $HOME does not exist."
fi

