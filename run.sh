#!/bin/bash

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./run.sh OPTION

# SETTINGS
set -o errexit
set -o pipefail

# FUNCTIONS
source functions/utilities.sh
source functions/options.sh

# EXECUTION
if [[ -d "$HOME" ]]; then
  while true; do
    if [[ $# == 0 ]]; then
      printf "\nUsage: run OPTION\n"
      printf "\nDotfile Options:\n"
      printf "  s: Show dotfiles available for install.\n"
      printf "  i: Install dotfiles (existing files are skipped).\n"
      printf "  l: Link dotfiles to this project (interactive, per file).\n"
      printf "  c: Check for changes since last install/update.\n"
      printf "  d: Delete dotfiles (interactive, per file).\n"
      printf "  q: Quit/Exit.\n\n"
      read -p "Enter selection: " response
      printf "\n"
      process_option $response
    else
      process_option $1
    fi
  done
else
  printf "ERROR: $HOME does not exist.\n"
fi
