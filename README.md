# Overview

[![Gittip](http://img.shields.io/gittip/bkuhlmann.svg)](https://www.gittip.com/bkuhlmann)

Shell scripts for applying default settings to UNIX-based operating systems.

By default, these are set to my preferences (namely for OSX) but you can change them to your liking by editing
any of the *.txt files in the home_files directory. Read on to learn more.

# Features

- Configures the Bash shell .bashrc file.
- Configures the Bash shell .bash_profile file.
- Configures the .inputrc file.
- Configures the [Vim](http://www.vim.org) .vimrc file.
- Configures the [Git](http://git-scm.com) .gitconfig, .gitignore, and hook (i.e. ~/.git_template) files.
- Configures the [Ruby Gems](http://docs.rubygems.org/read/chapter/11) .gemrc file.
- Configures the Ruby IRB .irbrc file.
- Configures the [Pry](http://pry.github.com) .pryrc file.
- Configures the [Ruby Debugger](http://bashdb.sourceforge.net/ruby-debug.html) .rdebugrc file.
- Configures the [Awesome Print](https://github.com/michaeldv/awesome_print) .aprc file.
- Configures the [Guard](https://github.com/guard/guard) .guardrc file.
- Configures the [Xray](https://github.com/brentd/xray-rails) .xrayconfig file.
- Configures the [Pow](http://pow.cx) .powconfig file.
- Configures the [PostgreSQL](http://www.postgresql.org/docs/9.3/static/app-psql.html) .psqlrc file.
- Configures [Sublime Text](http://www.sublimetext.com) as the default editor.
- Adds [Bash Completion](http://bash-completion.alioth.debian.org).
- Adds [Z](https://github.com/rupa/z) Bash support.
- Adds [rbenv](https://github.com/sstephenson/rbenv) Bash support.

# Requirements

- [OSX](https://github.com/bkuhlmann/osx)

# Setup

Open a terminal window and execute the following commands:

Current Version (stable)

    git clone git://github.com/bkuhlmann/dotfiles.git
    cd dotfiles
    git checkout v13.1.0

Master Version (unstable)

    git clone git://github.com/bkuhlmann/dotfiles.git
    cd dotfiles

Edit any of the home_files/*.txt files as you see fit. Then open a terminal window and execute the following command
to install:

    cd dotfiles
    ./run.sh

Executing the run.sh script will present the following options:

    s: Show managed dotfiles.
    i: Install dotfiles (existing files are skipped).
    l: Link dotfiles to this project (interactive per file, excludes: env.sh, .gemrc, and .gitconfig).
    c: Check for differences between $HOME files and this project's files.
    d: Delete dotfiles (interactive per file, excludes: env.sh, .gemrc, and .gitconfig).
    q: Quit/Exit.

The options prompt can be skipped by passing the desired option directly to the run.sh script.
For example, executing `./run.sh s` will show all managed dotfiles by this project.

After install, the following files will require manual updating:

- .bash/env.sh - Add secret/machine-specific environment settings (if any).
- .gemrc - Uncomment the "gemcutter_key" line and add your own RubyGems key for publishing gems.
- .gitconfig - Uncomment the name, email, and token lines within the `[user]` and `[github]` sections to replace with
  your own details.

# Usage

From the command line, the following aliases are available:

##### General
    .. = "cd .."
    ... = "cd ../.."
    cdb = "cd -"
    c = "clear"
    h = "history"
    l = "ls -alh"
    l1 = "ls -A1 | _copy_and_print 'n'"
    p = 'pwd | tr -d "rn" | _copy_and_print'
    o = "open"
    home = "cd $HOME"
    bashs = "exec $SHELL"
    pss = 'ps axu | grep "$@" --ignore-case --color=auto'
##### Network
    sshe = "$EDITOR $HOME/.ssh/config"
    ipa = 'curl -s checkip.dyndns.org | grep -Eo "[0-9.]+" | _copy_and_print'
    sniff = "sudo ngrep -W byline -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
##### [tmux](http://tmux.sourceforge.net)
    tsl = "tmux list-sessions"
    tsa = "tmux attach-session -t"
    tsk = "tmux kill-session -t"
    tsr = "tmux rename-session -t"
##### [Homebrew](http://brew.sh)
    hb = "brew"
    hbi = "brew install"
    hbin = "brew info"
    hbu = "brew uninstall"
    hbl = "brew list"
    hbup = "brew update"
    hbug = "brew upgrade"
    hbv = "brew versions"
    hbd = "brew doctor"
    hbc = "brew cleanup"
    hbrb = "brew uninstall ruby-build && brew install --HEAD ruby-build"
##### [Git](http://git-scm.com)
    gi = "git init"
    gcle = "git config --local --edit"
    gcge = "git config --global --edit"
    gget = "git config"
    gst = "git status --short --branch"
    gl = 'git log --graph --pretty=format:"%C(yellow)%H%C(reset) %C(bold blue)%an%C(reset) %s%C(bold cyan)%d%C(reset) %C(green)(%cr)%C(reset)"'
    gld = 'git log --pretty=format:"%C(yellow)%H%C(reset) %C(bold blue)%an%C(reset) %s%C(bold cyan)%d%C(reset) %C(green)(%cr)%C(reset) %n%b" --stat'
    glh = 'git log --pretty=format:%H -1 | _copy_and_print'
    gln = "git log --name-status"
    glf = 'git fetch && git log ..@{upstream} --graph --pretty=format:"%C(yellow)%H%C(reset) %C(bold blue)%an%C(reset) %s%C(bold cyan)%d%C(reset) %C(green)(%cr)%C(reset)"'
    gls = 'git log --pretty=format:"%C(yellow)%H%C(reset) %C(bold blue)%an%C(reset) %s%C(bold cyan)%d%C(reset) %C(green)(%cr)%C(reset)" -S'
    glt = 'git log --tags --simplify-by-decoration --pretty = "format:%d (%ad)" --date=short | sed -e "s/ (tag: //" -e "s/)//" -e "/^ /d"'
    grl = "git reflog"
    gg = "git grep"
    glast = "git show --stat"
    guthors = "git log --format = '%an' | sort | uniq -c | sort --reverse"
    gd = "git diff"
    gdc = "git diff --cached"
    gdm = "git diff origin/master"
    gdw = "git diff --word-diff"
    gdt = "git difftool"
    gdtc = "git difftool --cached"
    gdtm = "git difftool origin/master"
    gwc = "git whatchanged -p --pretty=medium"
    glame = "git blame"
    gb = "git branch --verbose"
    gba = "git branch --all"
    gbn = "git rev-parse --abbrev-ref HEAD | _copy_and_print"
    gbr = "git branch --move"
    gm = "git merge"
    gms = "git merge --squash"
    gcl = "git clone"
    gch = "git checkout"
    gchm = "git checkout master"
    ga = "git add"
    gau = "git add --update"
    gap = "git add --patch"
    gall = "git add --all ."
    gco = "git commit"
    gca = "git commit --all"
    gcm = "git commit --message"
    gcam = "git commit --all --message"
    gamend = "git commit --amend"
    gamendh = "git commit --all --amend --reuse-message HEAD"
    gcf = "git commit --fixup"
    gcp = "git cherry-pick"
    gash = "git stash save"
    gashc = "git stash clear"
    gf = "git fetch"
    gfp = "git fetch --prune"
    gpu = "git pull"
    gpur = "git pull --rebase" # Rebase the current branch on top of the upstream branch.
    gpuro = "gpur origin" # Rebase the current branch on top of the upstream origin branch.
    gpurom = "gpuro master" # Rebase the current branch on top of the upstream origin master branch.
    grc = "git rebase --continue"
    gra = "git rebase --abort"
    geady = "git rebase -i @{upstream}" # Interactive rebase.
    gp = "git push"
    gpo = "git push --set-upstream origin"
    gpr = "git push review master"
    gps = "git push stage stage:master"
    gpp = "git push production production:master"
    gtag = "git tag"
    gtags = "git push --tags"
    gr = "git reset" # Unstage staged files for commit.
    grs = "git reset --soft HEAD^" # Uncommit previous commit.
    grh = "git reset --hard HEAD" # Reset to HEAD, destroying all staged/unstaged changes.
    gdis = "git reset --hard" # Reset to commit (hash), destroying all committed changes up to specific commit.
    grev = "git revert" # Revert a previous commit (hash).
    glatest = "git for-each-ref --sort=-committerdate refs/heads --format = '%(committerdate:short) %(refname:short)'"
    ggc = "git fsck && git gc"
    grp = "git remote prune origin"
##### [Tar](http://www.gnu.org/software/tar/tar.html)
    bzc = "tar --use-compress-program=pigz --create --preserve-permissions --bzip2 --verbose --file"
    bzx = "tar --extract --bzip2 --verbose --file"
##### [rbenv](https://github.com/sstephenson/rbenv)
    rb = "rbenv"
    rbg = "rbenv global"
    rbl = "rbenv local"
    rbs = "rbenv shell"
    rbh = "rbenv rehash"
    rbp = "rbenv which"
    rbw = "rbenv whence"
    rbv = "rbenv versions"
    rbi = "rbenv install"
    rbil = "rbenv install --list"
    rbu = "rbenv uninstall"
    rbvars = "rbenv vars"
##### [Ruby](http://www.ruby-lang.org)
    rd = "rdoc -a -o _doc"
    rdo = "open _doc/index.html"
    rdd = "rm -rf _doc"
##### [Ruby Gems](http://rubygems.org)
    geml = "gem list"
    gemi = "gem install"
    gemup = "gem update"
    gemu = "gem uninstall"
    gemc = "gem cleanup"
    gems = "gem server"
    gemp = "gem pristine"
    geme = "gem environment"
    gemuc = "gem update --system && gem update && gem cleanup"
##### [Ruby Gems Whois](https://github.com/jnunemaker/gemwhois)
    gemw = "gem whois"
##### [Bundler](http://gembundler.com)
    b = "bundle"
    bi = "bundle install"
    bu = "bundle update"
    bo = "bundle outdated"
    bcon = "bundle console"
    be = "bundle exec"
    bess = "bes spec"
    bert = "ber test"
    berts = "ber test | grep _test.rb"
    bertv = "TESTOPTS=-v ber test"
    bch = "rm -f Gemfile.lock; bundle check"
    rebundle = "bch; bundle package"
##### [Gemsmith](https://github.com/bkuhlmann/gemsmith)
    gs = "gemsmith"
    gse = "gemsmith edit"
    gsr = "gemsmith read"
    gso = "gemsmith open"
##### [Ruby on Rails](http://rubyonrails.org)
    scs = "sc --sandbox"
    sgc = "sg controller"
    sgm = "sg model"
    sgh = "sg helper"
    sgs = "sg scaffold"
    rdbd = "ber db:drop"
    rdbc = "ber db:create"
    rdbm = "ber db:migrate"
    rdbmt = "ber db:migrate && ber db:rollback && ber db:migrate"
    rassp = "ber assets:precompile"
    rassc = "ber assets:clean"
    bernt = "ber notes:custom ANNOTATION=TODO"
    bernf = "ber notes:custom ANNOTATION=FIX"
    taild = "tail -f log/development.log"
    tailt = "tail -f log/test.log"
    res = "touch tmp/restart.txt"
    rprofile = "ruby-prof --printer=graph_html ./script/rails runner > profile.html"
    rpaths = "ber routes | sed -e "1d" -e "s,^[^/]*,,g" | awk '{print $1}' | sort | uniq"
    erd = "mkdir -p doc/design && ber erd attributes=primary_keys,foreign_keys,timestamps,inheritance,content inheritance=true orientation=vertical filename=doc/design/models"
    dmodels = "mkdir -p doc/design && railroady --label --inheritance --specify --all-columns --join --transitive --output doc/design/models.dot --models"
    dcontrollers = "mkdir -p doc/design && railroady --label --inheritance --output doc/design/controllers.dot --controllers"
    dstate = "mkdir -p doc/design && railroady --label --inheritance --output doc/design/state.dot --aasm"
##### [Rubocop](https://github.com/bbatsov/rubocop)
    rcop = "rubocop --display-cop-names"
##### [Capistrano](https://github.com/capistrano/capistrano)
    caps = "bec stage deploy"
    capp = "bec production deploy"
##### [Swift](https://developer.apple.com/swift)
    swift = "/Applications/Xcode6-Beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift"
##### [The Silver Surfer](https://github.com/ggreer/the_silver_searcher)
    agf = "ag --hidden --files-with-matches --file-search-regex"
##### [Z](https://github.com/rupa/z)
    ez = "$EDITOR $HOME/.z"
##### [Path Finder](http://www.cocoatech.com/pathfinder)
    pfo = 'open -a "Path Finder.app" "$PWD"'
##### [Vim](http://www.vim.org)
    v = "vim"
##### [Sublime Text](http://www.sublimetext.com)
    e = "sublime"
##### [Marked](http://markedapp.com)
    mo = "open -a Marked"

From the command line, the following functions are available:

##### General
    t2s = Tabs to Spaces - Converts a file from tab to space indendation.
##### [less](http://en.wikipedia.org/wiki/Less_(Unix))
    lessi = lessi - Interactively inspect a file (typically a log).
##### [curl](http://curl.haxx.se)
    curli = Curl Inspect - Inspect remote file, via curl, within default editor.
##### [lsof](http://people.freebsd.org/~abe/)
    port = Port - Lists file activity on a given port.
##### [Git](http://git-scm.com)
    groot = Git Root - Changes to project root directory (regardless of current depth).
    gia = Git Init (all) - Initializes/re-initializes for all Git repositories in current directory.
    guthorsa = Git Authors (all) - Answers author commit activity per project (ranked highest to lowest).
    gsta = Git Status (all) - Answers the status of projects with uncommited/unpushed changes.
    gup = Git Update - Fetches latest commits, reviews each commit (with diff), and rebases (all steps are optional).
    ghurn = Git Churn - Answers the commit churn for project files (sorted highest to lowest).
    glamel = Git Blame Log - Answers the blame log (i.e. commit notes) for a specific file and lines (optional).
    ggeta = Git Get Config Value (all) - Answers key value for all projects in current directory.
    gail = Git Email - Answers user email for current project.
    gaila = Git Email (all) - Answers user email for all projects in current directory.
    gseta = Git Set Config Value (all) - Sets key value for all projects in current directory.
    gailsa = Git Email Set (all) - Sets user email for all projects in current directory.
    gunseta = Git Unset (all) - Unsets key value for all projects in current directory.
    gince = Git Since - Answers a summarized list of Git activity since date/time for all projects in current directory.
    gsup = Git Standup - Answers a summarized list of Git activity since yesterday for all projects in current directory.
    gday = Git Day - Answers a summarized list of Git current day activity for all projects in current directory.
    gweek = Git Week - Answers a summarized list of Git current week activity for all projects in current directory.
    gmonth = Git Month - Answers a summarized list of Git current month activity for all projects in current directory.
    gtail = Git Tail - Answers commit history since last tag for current project and copies results to clipboard.
    gtaila = Git Tail (all) - Answers commit history count since last tag for all projects in current directory.
    gashl = Git Stash List - Lists git stashes in an easy to read format.
    gashs = Git Stash Show - Enhances git stash show behavior by prompting for input (multiple) or showing last stash (single).
    gashp = Git Stash Pop - Enhances git stash pop behavior by prompting for input (multiple) or popping last stash (single).
    gashd = Git Stash Drop - Enhances git stash drop behavior by prompting for input (multiple) or dropping last stash (single).
    gasha = Git Stash (all) - Answers stash count for all projects within current directory.
    gpua = Git Pull (all) - Pulls down new changes (if any) from remote branch for all projects in current directory.
    galla = Git Add (all) - Applies file changes (including new files) for all projects within current directory.
    gpa = Git Push (all) - Pushes changes for all projects within current directory.
    gcama = Git Commit with Message (all) - Commits changes (modified and new), with a message, for all projects within current directory.
    gcap = Git Commit and Push (all) - Commits and pushes changes for all projects within current directory.
    gvca = Git Validate and Clean (all) - Validates and cleans all projects in current directory.
    gbc = Git Branch Create - Creates and switches to local branch.
    gbs = Git Branch Switch - Switch between local branches.
    gbd = Git Branch Delete - Deletes local and remote branch (if found).
    gbdm = Git Branch Delete Merged - Deletes locally merged branches (if any).
    gtagd = Git Tag Delete - Deletes local and remote tag (if found).
    ghd = Git Hook Delete - Deletes all Git hooks for current project.
    ghda = Git Hook Delete (all) - Deletes all Git hooks for all projects in current directory.
##### [GitHub](https://github.com)
    gh = GitHub - View current GitHub project commits, branches, tags, etc. in default browser.
##### [Bundler](http://gembundler.com)
    bj = Bundler Jobs - Answers maximum Bundler job limit for current machine and automatically sets it if otherwise.
    boa = Bundle Outdated (all) - Answers a list of outdated gems for all projects within current directory.
    bua = Bundle Update (all) - Updates gems for all projects within current directory.
    bca = Bundle Clean (all) - Cleans all projects of gem artifacts (i.e. pkg folder).
    ber = Bundle Execute Rake - Executes Rake via binstub or Bundler.
    bertt = Bundle Execute Rake Test - Executes a single Test::Unit test via binstub or Bundler.
    bes = Bundle Execute RSpec - Executes RSpec via binstub or Bundler.
    bessa = Bundle Execute RSpec (all) - Executes RSpec via binstub or Bundler for all projects within current directory.
    beg = Bundle Execute Guard - Executes Guard via binstub or Bundler.
    bec = Bundle Execute Capistrano - Executes Capistrano via binstub or Bundler.
##### [Ruby](http://www.ruby-lang.org)
    rua = Ruby Upgrade (all) - Upgrades all Ruby projects in current directory with new Ruby version information.
##### [Ruby on Rails](http://rubyonrails.org)
    rew = Rails New - Builds a new rails application skeleton for selected template.
    sc = Rails Script Console - Launches the Rails console.
    ss = Rails Script Server - Launches the Rails server.
    sg = Rails Script Generator - Launches a Rails generator for controller, model, etc. scaffolds.
    sdb = Rails Script Database Console - Launches the Rails database console for direct access to the current application database.
##### [Travis CI](https://travis-ci.org/)
    tcie = Travis CI Encrypt (all) - Encrypts a string for all Travis CI-enabled (.travis.yml) projects in current directory.
##### [Site Validator](https://github.com/jaimeiniesta/site_validator)
    sv = Site Validator - Generates a validation report for a site using the W3C Validator.
##### [Image Magick](http://www.imagemagick.org)
    sketch = Sketch - Converts a photo into a sketch. Inspired by [Whiteboard Cleaner Gist](https://gist.github.com/lelandbatey/8677901).
##### [FFmpeg](http://www.ffmpeg.org)
    gifize = Gifize - Converts a video into an animated GIF.
##### Dotfiles
    dots = Dotfiles - Informational utility for learning more about dotfile aliases, functions, etc.

From IRB, Pry, and Rails consoles, the following commands are possible:

    ConsoleKit.copy - Copies data to the MacOS clipboard.
    ConsoleKit.paste - Pastes data from the MacOS clipboard.
    ConsoleKit.http_codes - Prints Rails HTTP codes.
    ConsoleKit.http_symbols - Prints Rails HTTP symbols.

From Pry, the following aliases are available:

    'w' = "whereami"
    'c' = "continue"
    's' = "step"
    'n' = "next"
    'f' = "finish"
    "bp" = "break"
    "bpe" = "break --enable"
    "bpd" = "break --disable"
    "bpD" = "break --delete"
    "bpc" = "break --disable-all"
    "bpC" = "break --delete-all"
    "bph" = "break --help"

# Versioning

Read [Semantic Versioning](http://semver.org) for details. Briefly, it means:

- Patch (x.y.Z) - Incremented for small, backwards compatible bug fixes.
- Minor (x.Y.z) - Incremented for new, backwards compatible public API enhancements and/or bug fixes.
- Major (X.y.z) - Incremented for any backwards incompatible public API changes.

# Contributions

Read [CONTRIBUTING](CONTRIBUTING.md) for details.

# Credits

Developed by [Brooke Kuhlmann](https://www.alchemists.io) at [Alchemists](https://www.alchemists.io)

# License

Copyright (c) 2010 [Alchemists](https://www.alchemists.io).
Read the [LICENSE](LICENSE.md) for details.

# History

Read the [CHANGELOG](CHANGELOG.md) for details.
