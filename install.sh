#!/bin/sh

echo "\nInstalling dotfiles...\n"

if [ -d "$HOME" ]; then
  for file in `ls -1 home_files`
  do
    source_file="home_files/$file"
    dest_file="$HOME/.${file%.*}"
    if [ -f "$dest_file" ]; then
      echo "Exists:  $dest_file"
    else
      cp "$source_file" "$dest_file"
      echo "Created: $dest_file"
    fi
  done
else
  echo "ERROR: $HOME does not exist."
fi

echo "\nDotfile install complete.\n"
