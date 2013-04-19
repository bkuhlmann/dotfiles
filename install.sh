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
    echo "  s: Show dotfiles available for install."
    echo "  i: Install dotfiles (existing files are skipped)."
    echo "  l: Link dotfiles to this project (interactive - asks by file)."
    echo "  c: Check for changes since last install/update."
    echo "  d: Delete dotfiles (interactive - asks by file)."
    echo "  q: Quit/Exit."
    echo ''
    read -p "Enter selection: " response
    case $response in
      's')
        show_files
        break;;
      'i')
        install_files
        break;;
      'l')
        link_files
        break;;
      'c')
        check_files
        break;;
      'd')
        delete_files
        break;;
      'q')
        break;;
    esac
  done

  echo ''
else
  echo "ERROR: $HOME does not exist."
fi
