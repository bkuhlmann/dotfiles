#!/bin/bash

# Label: RSpec Focus
# Description: Ensures RSpec specs don't include a ":focus" key.
function rspec_focus() {
  local label="[rspec]"

  if command -v ag > /dev/null; then
    local results=()
    results="$(ag --file-search-regex 'spec.rb' ', :focus' . || true)"

    if [[ ${#results[@]} > 0 && ${results[@]} != '' ]]; then
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
