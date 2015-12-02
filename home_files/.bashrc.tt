# BASHRC

# General
shopt -s globstar
shopt -s extglob

# Default Editors
export EDITOR=sublime
export VISUAL=vim

# History
export HISTTIMEFORMAT="%m-%d %T  "
export HISTCONTROL=erasedups # Remove duplicate entries.
export HISTSIZE=1000 # Keep a lengthy history.
export HISTIGNORE="..:...:c:h:l:l1:p:pwd:gst:gd:exit:* --help" # Exclude mundane commands.

# Environment
. "$HOME/.bash/env.sh"

# Colors
. "$HOME/.bash/colors.sh"

# Aliases
. "$HOME/.bash/aliases.sh"

# Functions
. "$HOME/.bash/functions-private.sh"
. "$HOME/.bash/functions-public.sh"

# Command Prompt (http://jonisalonen.com/2012/your-bash-prompt-needs-this)
. "$HOME/.bash/prompt.sh"

# Homebrew (http://brew.sh)
export PATH="/usr/local/sbin:$PATH"

# Bash Completion (http://bash-completion.alioth.debian.org)
if [[ -f $(brew --prefix)/etc/bash_completion ]]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Go (https://golang.org)
if [[ -e /usr/local/bin/go ]]; then
  export GOPATH=$HOME/Apps/Go
  export PATH=$PATH:$GOPATH/bin:/usr/local/opt/go/libexec/bin
fi

# rbenv (https://github.com/sstephenson/rbenv)
if [[ -d /usr/local/bin ]]; then
  export PATH="/usr/local/bin:$PATH" # OSX
fi

if [[ -d $HOME/.rbenv/bin ]]; then
  export PATH="$HOME/.rbenv/bin:$PATH" # Ubuntu
fi

eval "$(rbenv init -)"

# NPM (http://nodejs.org)
export PATH="$PATH:/usr/local/share/npm/bin"

# Travis CI (https://travis-ci.org)
if [[ -e "$HOME/.travis/travis.sh" ]]; then
  source "$HOME/.travis/travis.sh"
fi

# Z (https://github.com/rupa/z)
. $(brew --prefix)/etc/profile.d/z.sh
