#!/bin/sh

# DESCRIPTION
# Defines functions for installing dotfiles.

# Answers a list of all files stored in the home_files folder of this project.
function home_files {
  ls -1 home_files
}
export home_files

# Shows available files for install.
function show_files {
  echo "Dotfiles available for install:"

  for file in $(home_files)
  do
    echo "  .${file%.*}"
  done
}
export show_files

# Installs a file.
# Parameters:
# $1 = The file name.
function install_file {
  source_file="home_files/$1"
  dest_file="$HOME/.${1%.*}"

  if [ ! -f "$dest_file" ]; then
    cp "$source_file" "$dest_file"
    echo "  + $dest_file"
  fi
}
export install_file

# Installs all files.
function install_files {
  echo "Installing dotfiles..."

  for file in $(home_files)
  do
    install_file $file
  done

  echo "Dotfiles install complete!"
}
export install_files

# Links a dotfile to this project.
# Parameters:
# $1 = The file name.
function link_file {
  source_file="$PWD/home_files/$1"
  dest_file="$HOME/.${1%.*}"

  # Proceed only if the symbolic link doesn't already exist.
  if [ ! -h "$dest_file" ]; then
    read -p "  Link $dest_file -> $source_file (y/n)? " response
    if [ $response == 'y' ]; then
      ln -sf "$source_file" "$dest_file"
    fi
  fi
}
export link_file

# Links all files.
function link_files {
  echo "Linking dotfiles..."

  for file in $(home_files)
  do
    link_file $file
  done

  echo "Dotfiles link complete!"
}
export link_files

# Checks a file for changes.
# Parameters:
# $1 = The file name.
function check_file {
  source_file="home_files/$1"
  dest_file="$HOME/.${1%.*}"

  if [ -f "$dest_file" ]; then
    if [ "$(diff $dest_file $source_file)" != '' ]; then
      echo "  * $dest_file"
    fi
  else
    echo "  - $dest_file"
  fi
}
export check_file

# Checks all files for changes.
function check_files {
  echo "Checking dotfiles for changes..."

  for file in $(home_files)
  do
    check_file $file
  done

  echo "Dotfiles check complete!"
}
export check_files

# Delete file.
# Parameters:
# $1 = The file name.
function delete_file {
  source_file="home_files/$1"
  dest_file="$HOME/.${1%.*}"

  # Proceed only if the file exist.
  if [ -f "$dest_file" ]; then
    read -p "  Delete $dest_file (y/n)? " response
    if [ $response == 'y' ]; then
      rm -f "$dest_file"
    fi
  fi
}
export delete_file

# Delete files.
function delete_files {
  echo "Deleting dotfiles..."

  for file in $(home_files)
  do
    delete_file $file
  done

  echo "Dotfiles deletion complete!"
}
export delete_files

# Process selection.
# Parameters:
# $1 = The option to process.
function process {
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
