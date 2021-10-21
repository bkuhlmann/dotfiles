#! /usr/bin/env bash

# Label: Git Lint Check
# Description: Enforce consistent Git commits.
git_lint_check() {
  if _check_gem_dependencies "git-lint"; then
    git-lint --hook "${BASH_ARGV[0]}"
  fi
}
export -f git_lint_check

# Label: Git Trailer Cleaner
# Description: Remove unused/empty Git commit body trailers.
# Parameters: $1 (required) - Commit message file path.
git_trailer_cleaner() {
  local commit_message_path="$1"

  git interpret-trailers --in-place --trim-empty "$commit_message_path"
}
export -f git_trailer_cleaner
