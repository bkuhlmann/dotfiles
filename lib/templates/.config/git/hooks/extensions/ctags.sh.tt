#! /usr/bin/env bash

# Label: CTags Rebuild
# Description: Rebuild project .tags file.
ctags_rebuild() {
  local label="[ctags]"

  _build_ctags
  printf "%s\n" "$label: CTags rebuilt."
}
export -f ctags_rebuild
