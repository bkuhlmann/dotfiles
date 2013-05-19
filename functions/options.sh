#!/bin/sh

# DESCRIPTION
# Defines command line prompt options.

# Process option selection.
# Parameters:
# $1 = The option to process.
function process_dotfile_option {
  case $1 in
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
}
export -f process_dotfile_option
