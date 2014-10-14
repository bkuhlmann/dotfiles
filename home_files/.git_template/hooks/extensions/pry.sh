#!/bin/bash

# Label: Pry Binding
# Description: Ensures Pry "binding.pry" is removed from source code.
function pry_binding() {
  local label="[pry]"

  if command -v ag > /dev/null; then
    local results=()
    results="$(ag --file-search-regex '(rb|erb|slim)' 'binding.pry' . || true)"

    if [[ ${#results[@]} > 0 && ${results[@]} != '' ]]; then
      printf "$label: The following files have \"binding.pry\" statements:\n\n"

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
