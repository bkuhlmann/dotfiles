#! /usr/bin/env bash

# Label: Comment Total
# Description: Print project comment total.
# Parameters: $1 (required) - The comment prefix to search for.
_comment_total() {
  local prefix="$1"
  local label="[comments]"
  local lines=("omit:0") # Ensures array is populated, with omitted total, in case Silver Searcher finds nothing.
  local total=0

  if ! command -v rg > /dev/null; then
     printf "%s" "$label: Ripgrep not found. To install, run: brew install ripgrep."
     exit 1
  fi

  lines+=($(rg --count --case-sensitive --iglob '!vendor' --regexp "^\s*?(#|--|//) $prefix" . || :))

  for line in ${lines[*]}; do
    total=$((total + ${line#*:}))
  done

  if [[ $total -gt 0 ]]; then
    _print_warning "$label: $total $prefix"
  fi
}
export -f _comment_total

# Label: Comment Totals
# Description: Print project comment totals.
comment_totals() {
  local prefixes=("TODO" "FIX" "DUPLICATE" "shellcheck disable" ":reek:" "rubocop:disable")

  for prefix in ${prefixes[*]}; do
    _comment_total "$prefix"
  done
}
export -f comment_totals
