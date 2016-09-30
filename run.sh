#!/bin/bash

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./run.sh OPTION

# SETTINGS
set -o errexit
set -o pipefail

# LIBRARY
source lib/utilities.sh
source lib/options.sh

# EXECUTION
if [[ -d "$HOME" ]]; then
  while true; do
    if [[ $# == 0 ]]; then
      printf "\nUsage: run OPTION\n"
      printf "\nDotfile Options:\n"
      printf "  s: Show managed dotfiles.\n"
      printf "  i: Install dotfiles (existing files are skipped).\n"
      printf "  l: Link dotfiles to this project (interactive per file, excludes: env.sh and .gitconfig).\n"
      printf "  c: Check for differences between \$HOME files and this project's files.\n"
      printf "  d: Delete dotfiles (interactive per file, excludes: env.sh and .gitconfig).\n"
      printf "  q: Quit/Exit.\n\n"
      read -p "Enter selection: " response
      printf "\n"
      process_option $response
    else
      process_option $1
    fi
    break
  done
else
  printf "ERROR: $HOME does not exist.\n"
  return 1
fi
