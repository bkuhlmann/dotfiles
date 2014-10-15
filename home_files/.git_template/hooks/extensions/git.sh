#!/bin/bash

# Label: Git Commit Message Prefix
# Description: Ensures a commit message start with an expected prefix word.
function git_commit_message_prefix() {
  local label="[git]"
  local message_file="${BASH_ARGV[0]}"
  local match="^(Fixed|Removed|Added|Updated|Refactored).+"

  read -r first_line < $message_file

  if [[ ! "$first_line" =~ $match ]]; then
    printf "$label: Invalid commit message prefix. Use only: Fixed, Removed, Added, Updated, or Refactored.\n"
    exit 1
  fi
}
