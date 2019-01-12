#! /usr/bin/env bash

# Label: Git Cop
# Description: Enforce consistent Git commits.
git_cop() {
  if _check_gem_dependencies "git-cop"; then
    git-cop --hook --commit-message "${BASH_ARGV[0]}"
  fi
}
export -f git_cop

# Label: Git Trailer Cleaner
# Description: Remove unused/empty Git commit body trailers.
# Parameters: $1 (required) - Commit message file path.
git_trailer_cleaner() {
  local commit_message_path="$1"

  git interpret-trailers --in-place --trim-empty "$commit_message_path"
}
export -f git_trailer_cleaner
