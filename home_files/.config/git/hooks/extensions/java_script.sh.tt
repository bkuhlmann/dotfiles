#! /usr/bin/env bash

# Label: Git Label
# Description: Print Git label.
_java_script_label() {
  printf "[java_script]"
}
export -f _java_script_label

# Label: File Pattern
# Description: Print file regular expression.
_java_script_file_pattern() {
  printf '^((?!min).)+.(js|erb|slim)$'
}
export -f _java_script_file_pattern

# Label: JavaScript Debugger
# Description: Detect JavaScript debug statements.
java_script_debugger() {
  local search_pattern='^(?:(?!(.*//.+|.*/\*.+)).*debugger;)'
  _scan_code "$(_java_script_label)" "Debug statements detected" $(_java_script_file_pattern) $search_pattern
}
export -f java_script_debugger

# Label: JavaScript Console
# Description: Detect JavaScript console statements.
java_script_console() {
  local search_pattern='^(?:(?!(.*//.+|.*/\*.+)).*console.(count|dir|error|group.*|info|log|time.*|table|trace)\(.+\);)'
  _scan_code "$(_java_script_label)" "Console statements detected" $(_java_script_file_pattern) $search_pattern
}
export -f java_script_console

# Label: JavaScript Alert
# Description: Detect JavaScript alert statements.
java_script_alert() {
  local search_pattern='^(?:(?!(.*//.+|.*/\*.+)).*alert\(.+\);)'
  _scan_code "$(_java_script_label)" "Console statements detected" $(_java_script_file_pattern) $search_pattern
}
export -f java_script_alert
