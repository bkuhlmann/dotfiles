#!/bin/bash

function git_commit_message_prefix() {
  local label="[git]"
  local message_file="${BASH_ARGV[0]}"
  read -r first_line < $message_file

  local match="^(Fixed|Removed|Added|Updated|Refactored).+"
  if [[ ! "$first_line" =~ $match ]]; then
    printf "$label: Invalid commit message prefix. Use only: Fixed, Removed, Added, Updated, or Refactored.\n"
    exit 1
  fi
}
