#! /usr/bin/env bash

# Label: Bundler Gemfile Path
# Description: Detect gem path statements.
bundler_gemfile_path() {
  _scan_code "[bundler]" "Gemfile path statement detected" 'Gemfile' '(path:|:path\s=>)'
}
export -f bundler_gemfile_path

# Label: Bundler Audit Check
# Description: Scans gem dependencies for security vulnerabilities.
bundler_audit_check() {
  if _check_gem_dependencies "bundler-audit"; then
    printf "[bundler-audit]: "
    bundle exec bundler-audit
  fi
}
export -f bundler_audit_check
