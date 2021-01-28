#! /usr/bin/env bash

# Label: Check Gem Dependencies
# Description: Check Gemfile/gemspec dependencies for specified gem.
# Parameters: $1 (required) - The gem name.
_check_gem_dependencies() {
  local gem="$1"
  rg "(add.*dependency \"$gem\"|add.*dependency '$gem'|gem \"$gem\"|gem '$gem')" --max-depth 1 . > /dev/null
}
export -f _check_gem_dependencies

# Label: Builds CTags
# Description: Build/rebuild CTags.
_build_ctags() {
  rm -f ".tags"
  rm -f "tags"
  ctags
}
export -f _build_ctags

# Label: Print Warning.
# Description: Print yellow warning message.
# Parameters: $1 (required) - Message.
_print_warning() {
  local message="$1"

  printf "\033[33m"
  printf "%s\n" "$message"
  printf "\033[m"
}
export -f _print_warning

# Label: Print Error.
# Description: Print red error message.
# Parameters: $1 (required) - Message.
_print_error() {
  local message="$1"

  printf "\033[31m"
  printf "%s\n" "$message"
  printf "\033[m"
}
export -f _print_error

# Label: Scan Code
# Description: Scan for invalid code.
# Parameters: $1 (required) - Label, $2 (required) - Message, $3 (required) - File regex, $4 (required) - Search regex.
_scan_code() {
  local label="$1"
  local message="$2"
  local file_pattern=$3
  local search_pattern=$4
  local ignore_pattern="vendor"

  if command -v ag > /dev/null; then
    results=("$(ag --file-search-regex $file_pattern $search_pattern --ignore $ignore_pattern . || :)")

    if [[ ${#results[@]} -gt 0 && ${results[@]} != '' ]]; then
      _print_error "$label: $message:"

      for line in ${results[@]}; do
        _print_error "  $line"
      done

      exit 1
    fi
  else
    _print_error "$label: Silver Surfer not found. To install, run: brew install the_silver_searcher."
     exit 1
  fi
}
export -f _scan_code
