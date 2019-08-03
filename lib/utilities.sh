#! /usr/bin/env bash

# DESCRIPTION
# Defines general utility functions.

# Answers a list of files stored in the home_files folder of this project.
home_files() {
  for file in $(find home_files -type f); do
    printf "%s\n" "$file"
  done
}
export -f home_files

base_dest_file() {
  local source_file="$1"
  local computed_file=''

  printf "${source_file%.*}" | sed 's/home_files\///g'
}
export -f base_dest_file

# Shows managed files.
show_files() {
  printf "%s\n" "Managed Dotfiles:"

  for file in $(home_files); do
    printf "  %s\n" "$(base_dest_file $file)"
  done
}
export -f show_files

# Installs a file.
# Parameters:
# $1 = The file name.
install_file() {
  local source_file="$1"
  local dest_file="$HOME/$(base_dest_file $source_file)"
  local dest_dir="$(dirname $dest_file)"

  if [[ "$(basename $source_file)" == "mkdir.command" ]]; then
    mkdir -p $dest_dir
    return
  fi

  if [[ ! -f "$dest_file" ]]; then
    mkdir -p "$dest_dir"
    cp "$source_file" "$dest_file"
    printf "  + %s\n" "$dest_file"
  fi
}
export -f install_file

# Installs all files.
install_files() {
  printf "%s\n" "Installing dotfiles..."

  for file in $(home_files); do
    install_file $file
  done

  printf "%s\n" "Dotfiles install complete!"
}
export -f install_files

# Links a dotfile to this project.
# Parameters:
# $1 = The file name.
link_file() {
  local source_file="$PWD/$1"
  local dest_file="$HOME/$(base_dest_file $1)"
  local dest_dir="$(dirname $dest_file)"
  local excludes=".+(env.sh.tt|.gitconfig.tt)$"

  if [[ "$(basename $source_file)" == "mkdir.command" ]]; then
    mkdir -p $dest_dir
    return
  fi

  if [[ ! -h "$dest_file" && ! "$source_file" =~ $excludes ]]; then
    read -r -p "  Link $dest_file -> $source_file (y/n)? " response
    if [[ $response == 'y' ]]; then
      mkdir -p "$dest_dir"
      ln -sf "$source_file" "$dest_file"
    fi
  fi
}
export -f link_file

# Links all files.
link_files() {
  printf "%s\n" "Linking dotfiles..."

  for file in $(home_files); do
    link_file $file
  done

  printf "%s\n" "Dotfiles link complete!"
}
export -f link_files

# Checks a file for changes.
# Parameters:
# $1 = The file name.
check_file() {
  local source_file="$1"
  local dest_file="$HOME/$(base_dest_file $1)"

  if [[ -e "$dest_file" || -h "$dest_file" ]]; then
    if [[ "$(diff $dest_file $source_file)" != '' ]]; then
      printf "  * %s\n" "$dest_file"
    fi
  else
    printf "  - %s\n" "$dest_file"
  fi
}
export -f check_file

# Checks all files for changes.
check_files() {
  printf "%s\n" "Dotfiles Changes:"

  for file in $(home_files); do
    check_file $file
  done

  printf "%s\n" "Dotfiles check complete!"
}
export -f check_files

# Delete file.
# Parameters:
# $1 = The file name.
delete_file() {
  local dest_file="$HOME/$(base_dest_file $1)"
  local excludes=".+(env.sh|.gitconfig)$"

  # Proceed only if file exists.
  if [[ -e "$dest_file" || -h "$dest_file" ]] && [[ ! "$dest_file" =~ $excludes ]]; then
    read -r -p "  Delete $dest_file (y/n)? " response
    if [[ $response == 'y' ]]; then
      rm -f "$dest_file"
    fi
  fi
}
export -f delete_file

# Delete files.
delete_files() {
  printf "%s\n" "Deleting dotfiles..."

  for file in $(home_files); do
    delete_file $file
  done

  printf "%s\n" "Dotfiles deletion complete!"
}
export -f delete_files
