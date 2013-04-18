#!/bin/sh

# DESCRIPTION
# Executes the dotfiles installer.

# USAGE
# ./install.sh

# SETTINGS
set -e # Exit if any command returns non-zero.

# FUNCTIONS
source functions/functions.sh

# EXECUTION
if [ -d "$HOME" ]; then
  echo ''

  while true; do
    echo "Install Options:"
    echo "  i: Install dotfiles (existing files will be skipped)."
    echo "  c: Check for changes since last install."
    echo "  q: Quit/Exit."
    echo ''
    read -p "Enter selection: " response
    case $response in
      'i')
        install_files
        break;;
      'c')
        check_files
        break;;
      'q')
        break;;
    esac
  done

  echo ''
else
  echo "ERROR: $HOME does not exist."
fi
