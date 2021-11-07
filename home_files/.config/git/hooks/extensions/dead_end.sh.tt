#! /usr/bin/env bash

# Label: Ruby DeadEnd
# Description: Detect Ruby missing `end` statements.
ruby_dead_end() {
  if _check_gem_dependencies "dead_end"; then
    printf "%s\n" "[dead_end]:"
    bundle exec dead_end **/*.rb
  fi
}
export -f ruby_dead_end
