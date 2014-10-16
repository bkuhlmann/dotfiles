# BASH COLORS

# Terminal Colors

# Color Designators:
#  a  black
#  b  red
#  c  green
#  d  brown
#  e  blue
#  f  magenta
#  g  cyan
#  h  light grey
#  A  bold black, usually shows up as dark grey
#  B  bold red
#  C  bold green
#  D  bold brown, usually shows up as yellow
#  E  bold blue
#  F  bold magenta
#  G  bold cyan
#  H  bold light grey; looks like bright white
#  x  default foreground or background

# Attribute Order:
#  1.   directory
#  2.   symbolic link
#  3.   socket
#  4.   pipe
#  5.   executable
#  6.   block special
#  7.   character special
#  8.   executable with setuid bit set
#  9.   executable with setgid bit set
#  10.  directory writable to others, with sticky bit
#  11.  directory writable to others, without sticky bit

# Default: "exfxcxdxbxegedabagacad"
export CLICOLOR=1
export LSCOLORS=cxfxcxdxbxegebabagacad

# Bash Colors
export BLACK='\e[0;30m'
export GUNMETAL='\e[1;30m'
export GREY='\e[0;37m'
export RED='\e[0;31m'
export LIGHT_RED='\e[1;31m'
export PURPLE='\e[0;35m'
export LIGHT_PURPLE='\e[1;35m'
export BLUE='\e[0;34m'
export LIGHT_BLUE='\e[1;34m'
export GREEN='\e[0;32m'
export LIGHT_GREEN='\e[1;32m'
export CYAN='\e[0;36m'
export LIGHT_CYAN='\e[1;36m'
export GOLD='\e[0;33m'
export YELLOW='\e[1;33m'
export WHITE='\e[1;37m'

export BLACK_UNDERLINE='\e[4;30m'
export RED_UNDERLINE='\e[4;31m'
export GREEN_UNDERLINE='\e[4;32m'
export YELLOW_UNDERLINE='\e[4;33m'
export BLUE_UNDERLINE='\e[4;34m'
export PURPLE_UNDERLINE='\e[4;35m'
export CYAN_UNDERLINE='\e[4;36m'
export WHITE_UNDERLINE='\e[4;37m'

export BLACK_BACKGROUND='\e[48;5;0m'
export RED_BACKGROUND='\e[48;5;1m'
export GREEN_BACKGROUND='\e[48;5;2m'
export YELLOW_BACKGROUND='\e[48;5;11m'
export SLATE_BACKGROUND='\e[48;5;23m'
export BLUE_BACKGROUND='\e[48;5;19m'
export PURPLE_BACKGROUND='\e[48;5;5m'
export CYAN_BACKGROUND='\e[48;5;6m'
export SILVER_BACKGROUND='\e[48;5;7m'
export WHITE_BACKGROUND='\e[48;5;255m'

export NORMAL='\e[0m'
