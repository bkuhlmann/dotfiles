#!/bin/sh

# DESCRIPTION
# Defines functions for installing dotfiles.

# Installs a file.
# Parameters:
# $1 = The file name.
function install_file {
  source_file="home_files/$1"
  dest_file="$HOME/.${1%.*}"

  if [ ! -f "$dest_file" ]; then
    cp "$source_file" "$dest_file"
    echo " + $dest_file"
  fi
}
export install_file

# Installs all files.
function install_files {
  echo "\nInstalling dotfiles..."

  for file in `ls -1 home_files`
  do
    install_file $file
  done

  echo "Dotfile install complete."
}
export install_files

# Checks a file for changes.
# Parameters:
# $1 = The file name.
function check_file {
  source_file="home_files/$1"
  dest_file="$HOME/.${1%.*}"

  if [ "$(diff $dest_file $source_file)" == '' ]; then
    echo "Identical: $dest_file"
  else
    echo "Different: $dest_file"
  fi
}
export check_file

# Checks all files for changes.
function check_files {
  echo "\nChecking dotfiles for changes...\n"

  for file in `ls -1 home_files`
  do
    check_file $file
  done

  echo "\nDotfile check complete."
}
export check_files
