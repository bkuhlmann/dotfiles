#!/bin/bash

# DESCRIPTION
# Defines global settings.

# FUNCTIONS
function rspec_focus() {
  local label="[rspec focus]"

  if command -v ag  >/dev/null 2>&1; then
    local results=()
    results="$(ag --file-search-regex 'spec.rb' ', :focus' .)"

    if [[ ${#results[@]} > 0 ]]; then
      printf "$label: The following files have \":focus\" statements:\n\n"

      for line in ${results[@]}; do
        printf "$line\n"
      done

      exit 1
    fi
  else
     printf "$label: The Silver Surfer not found. To install, run: brew install the_silver_searcher."
     exit 1
  fi
}
