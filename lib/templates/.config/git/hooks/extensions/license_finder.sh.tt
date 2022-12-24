#! /usr/bin/env bash

# Label: License Finder Check
# Description: Scan project for valid licenses.
license_finder_check() {
  if _check_gem_dependencies "license_finder"; then
    printf "%s\n" "[license_finder]:"
    bundle exec license_finder
  fi
}
export -f license_finder_check
