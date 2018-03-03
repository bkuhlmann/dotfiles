#! /usr/bin/env bash

# Label: Rubocop Check
# Description: Scan Ruby code for poor style choices.
rubocop_check() {
  if _check_gem_dependencies "rubocop"; then
    printf "%s\n" "[rubocop]:"
    bundle exec rubocop --display-cop-names --format simple
  fi
}
export -f rubocop_check
