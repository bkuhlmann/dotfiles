#! /usr/bin/env bash

# Label: Ruby Debug
# Description: Detect Ruby debug statements.
ruby_debug() {
  local search_pattern='^(?:(?!.*#.+).*(binding.irb|binding.break|binding.b))'
  _scan_code "[ruby]" "Debug statements detected" '(rb|erb|slim)$' $search_pattern
}
export -f ruby_debug
