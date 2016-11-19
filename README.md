# Dotfiles

[![Patreon](https://img.shields.io/badge/patreon-donate-brightgreen.svg)](https://www.patreon.com/bkuhlmann)

Shell scripts for applying default settings to UNIX-based operating systems.

By default, these are set to my preferences (namely for macOS) but you can change them to your
liking by editing any of the `*.tt` template files in the `home_files` directory. Read on to learn
more.

<!-- Tocer[start]: Auto-generated, don't remove. -->

# Table of Contents

- [Features](#features)
- [Screencast](#screencast)
- [Requirements](#requirements)
- [Setup](#setup)
  - [Upgrade](#upgrade)
- [Usage](#usage)
      - [Aliases](#aliases)
        - [General](#general)
        - [Bash](#bash)
        - [Network](#network)
        - [tmux](#tmux)
        - [Homebrew](#homebrew)
        - [Git](#git)
        - [Tar](#tar)
        - [PostgreSQL](#postgresql)
        - [Redis](#redis)
        - [Elasticsearch](#elasticsearch)
        - [chruby](#chruby)
        - [Ruby](#ruby)
        - [Ruby Gems](#ruby-gems)
        - [Ruby Gems Whois](#ruby-gems-whois)
        - [Rake](#rake)
        - [Bundler](#bundler)
        - [Milestoner](#milestoner)
        - [Gemsmith](#gemsmith)
        - [Pragmater](#pragmater)
        - [RSpec](#rspec)
        - [Ruby on Rails](#ruby-on-rails)
        - [Elm](#elm)
        - [Jasmine](#jasmine)
        - [Rubocop](#rubocop)
        - [Rails Best Practices](#rails-best-practices)
        - [SimpleCov](#simplecov)
        - [Foreman](#foreman)
        - [Swift](#swift)
        - [Silver Surfer](#silver-surfer)
        - [direnv](#direnv)
        - [Z](#z)
        - [iTerm](#iterm)
        - [Path Finder](#path-finder)
        - [Vim](#vim)
        - [Sublime Text](#sublime-text)
        - [Marked 2](#marked-2)
        - [asciinema](#asciinema)
      - [Functions](#functions)
        - [General](#general-1)
        - [less](#less)
        - [OpenSSL](#openssl)
        - [curl](#curl)
        - [lsof](#lsof)
        - [Git](#git-1)
        - [GitHub](#github)
        - [PostgreSQL](#postgresql-1)
        - [Ruby](#ruby-1)
        - [Ruby Gems](#ruby-gems-1)
        - [RSpec](#rspec-1)
        - [Bundler](#bundler-1)
        - [Ruby on Rails](#ruby-on-rails-1)
        - [Rails ERD](#rails-erd)
        - [RailRoady](#railroady)
        - [Travis CI](#travis-ci)
        - [Image Magick](#image-magick)
        - [FFmpeg](#ffmpeg)
        - [asciinema](#asciinema-1)
        - [Dotfiles](#dotfiles)
      - [Git Hooks](#git-hooks)
      - [IRB, Pry, and Rails consoles](#irb-pry-and-rails-consoles)
      - [Pry Aliases](#pry-aliases)
- [Versioning](#versioning)
- [Code of Conduct](#code-of-conduct)
- [Contributions](#contributions)
- [License](#license)
- [History](#history)
- [Credits](#credits)

<!-- Tocer[finish]: Auto-generated, don't remove. -->

# Features

- Configures the Bash `.bashrc`, `.bash_profile`, and `.inputrc` files.
- Configures the `.hushlogin` file.
- Configures the [CTags](http://ctags.sourceforge.net) `.ctags` file.
- Configures the [Vim](http://www.vim.org) `.vimrc` file.
- Configures the [Git](http://git-scm.com) `.gitconfig`, `.gitignore`, and hook (i.e.
  `.git_template`) files.
- Configures the [Silver Surfer](https://github.com/ggreer/the_silver_searcher) `.agignore` file.
- Configures the [Ruby Gems](https://rubygems.org) `.gemrc` file.
- Configures the [Ruby](https://www.ruby-lang.org) `.ruby-version` and `.irbrc` files.
- Configures the [Pry](http://pry.github.com) `.pryrc` file.
- Configures the [Ruby Debugger](http://bashdb.sourceforge.net/ruby-debug.html) `.rdebugrc` file.
- Configures the [RSpec](http://rspec.info) `.rspec` file.
- Configures the [Awesome Print](https://github.com/michaeldv/awesome_print) `.aprc` file.
- Configures the [Pow](http://pow.cx) `.powconfig` file.
- Configures the [PostgreSQL](http://www.postgresql.org/docs/9.3/static/app-psql.html) `.psqlrc`
  file.
- Configures the [Xray](https://github.com/brentd/xray-rails) `.xrayconfig` file.
- Configures the [Rubocop](https://github.com/bbatsov/rubocop) `.rubocop.yml` file.
- Configures the [NPM](https://www.npmjs.org) `.npmrc` file.
- Configures [Sublime Text](http://www.sublimetext.com) as the default editor.
- Adds [Bash Completion](http://bash-completion.alioth.debian.org).
- Adds [GPG](https://www.gnupg.org) support.
- Adds [Go](https://golang.org) support.
- Adds [direnv](http://direnv.net) support.
- Adds [chruby](https://github.com/postmodern/chruby) support.
- Adds [Node.js](http://nodejs.org) support.
- Adds [Travis CI](https://travis-ci.org) support.
- Adds [Z](https://github.com/rupa/z) support.

# Screencast

[![asciicast](https://asciinema.org/a/88966.png)](https://asciinema.org/a/88966)

# Requirements

- [macOS](https://github.com/bkuhlmann/mac_os)

# Setup

Open a terminal window and execute the following commands:

Current Version (stable)

    git clone https://github.com/bkuhlmann/dotfiles.git
    cd dotfiles
    git checkout v24.1.0

Master Version (unstable)

    git clone https://github.com/bkuhlmann/dotfiles.git
    cd dotfiles

Edit any of the `home_files/*.tt` template files as you see fit. Then open a terminal window and
execute the following command to install:

    cd dotfiles
    bin/run

Executing the `bin/run` script will present the following options:

    s: Show managed dotfiles.
    i: Install dotfiles (existing files are skipped).
    l: Link dotfiles to this project (interactive per file, excludes: env.sh and .gitconfig).
    c: Check for differences between $HOME files and this project's files.
    d: Delete dotfiles (interactive per file, excludes: env.sh and .gitconfig).
    q: Quit/Exit.

The options prompt can be skipped by passing the desired option directly to the `bin/run` script.
For example, executing `bin/run s` will show all managed dotfiles by this project.

After install, the following files will require manual updating:

- `.bash/env.sh`: Add secret/machine-specific environment settings (if any).
- `.gitconfig`: Uncomment the name, email, and token lines within the `[user]` and `[github]`
  sections to replace with your own details.

## Upgrade

When upgrading to a new version, run the following:

0. Run: `bin/run l`. This will link any new files. If not using linked files, run `bin/run d` and
   `bin/run i` instead.
0. Run: `bin/run c`. This will display file differences (if any -- usually, should only be excluded
   files).
0. Run: `bashs`. This will apply updates to the shell.
0. Change to the root directory where all projects are stored and run `gia` to re-initialize
   repositories with new Git Hook updates.

# Usage

#### Aliases

##### General
    .. = "cd .."
    ... = "cd ../.."
    cdb = "cd -"
    c = "clear"
    h = "history"
    l = "ls -alh"
    l1 = "ls -A1 | _copy_and_print '\n'"
    p = 'pwd | tr -d "\r\n" | _copy_and_print'
    o = "open"
    cat = 'ccat -G Keyword = "turquoise" -G Punctuation="green" -G Decimal="green" -G Type="blue" -G Literal="blue" -G String="lightgray" -G Plaintext="white"'
    home = 'cd $HOME'
    man = "gem man --system"
    rmde = "find . -type d -empty -not -path '*.git*' -delete"
##### [Bash](https://www.gnu.org/software/bash)
    bashe = '$EDITOR $HOME/.bash/env.sh'
    bashs = 'exec $SHELL'
##### Network
    sshe = '$EDITOR $HOME/.ssh/config'
    key = "open /Applications/Utilities/Keychain\ Access.app"
    ipa = 'curl --silent checkip.dyndns.org | ag --only-matching "[0-9\.]+" | _copy_and_print'
    sniff = "sudo ngrep -W byline -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
    dnsi = "scutil --dns"
    dnss = "sudo dscacheutil -statistics"
    dnsf = "sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder && printf 'DNS cache cleared.\n'"
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
    hbs = "brew search"
    hbsw = "brew switch"
    hbup = "brew update"
    hbug = "brew upgrade"
    hbp = "brew pin"
    hbpu = "brew unpin"
    hbd = "brew doctor"
    hbc = "brew cleanup"
    hbsu = "hbup && hbug && hbc"
##### [Git](http://git-scm.com)
    gi = "git init"
    gcle = "git config --local --edit"
    gcge = "git config --global --edit"
    gcd = "git config --show-origin"
    gget = "git config --get"
    gset = "git config --add"
    gst = "git status --short --branch"
    gl = 'git log --graph --pretty=format:"$(_git_log_line_format)"'
    gld = 'git log --stat --pretty=format:"$(_git_log_details_format)"'
    glh = 'git log --pretty=format:%H -1 | _copy_and_print'
    glf = 'git fetch && git log --reverse --no-merges --pretty=format:"$(_git_log_line_format)" ..@{upstream}'
    glg = 'git log --pretty=format:"$(_git_log_line_format)" --grep'
    gls = 'git log --pretty=format:"$(_git_log_line_format)" -S'
    glt = 'git for-each-ref --sort=taggerdate --format = "%(color:yellow)%(refname:short)%(color:reset)|%(taggerdate:short)|%(color:blue)%(color:bold)%(*authorname)%(color:reset)|%(subject)" refs/tags | column -s"|" -t'
    grl = "git reflog"
    gg = "git grep"
    guthors = "git log --format = '%an' | sort | uniq -c | sort --reverse"
    gd = "git diff"
    gdc = "git diff --cached"
    gdm = "git diff origin/master"
    gdw = "git diff --color-words"
    gdo = 'git diff --name-only | uniq | xargs $EDITOR'
    gdt = "git difftool"
    gdtc = "git difftool --cached"
    gdtm = "git difftool origin/master"
    glame = "git blame -M -C -C -C"
    gbi = "git bisect"
    gbis = "git bisect start"
    gbib = "git bisect bad"
    gbig = "git bisect good"
    gbir = "git bisect reset"
    gbisk = "git bisect skip"
    gbil = "git bisect log"
    gbire = "git bisect replay"
    gbiv = 'git bisect visualize --reverse --pretty=format:"$(_git_log_line_format)"'
    gbih = "git bisect help"
    gb = "git branch --verbose"
    gbt = "git show-branch --topics"
    gba = "git branch --all"
    gbn = "_git_branch_name | _copy_and_print"
    gbr = "git branch --move"
    gm = "git merge"
    gms = "git merge --squash"
    gma = "git merge --abort"
    gcl = "git clone"
    gch = "git checkout"
    gchm = "git checkout master"
    ga = "git add"
    gau = "git add --update"
    gap = "git add --patch"
    gall = "git add --all ."
    gco = "git commit"
    gatch = "git commit --patch"
    gca = "git commit --all"
    gcm = "git commit --message"
    gcam = "git commit --all --message"
    gcf = "git commit --fixup"
    gcs = "git commit --squash"
    gamend = "git commit --amend"
    gamendh = "git commit --all --amend --no-edit"
    gcp = "git cherry-pick"
    gcpa = "git cherry-pick --abort"
    gashc = "git stash clear"
    gnl = "git notes list"
    gns = "git notes show"
    gna = "git notes add"
    gne = "git notes edit"
    gnd = "git notes remove"
    gnp = "git notes prune"
    gf = "git fetch"
    gfp = "git fetch --prune"
    gpu = "git pull"
    gpuo = "git pull origin"
    gpuom = "git pull origin master"
    grim = "gri master"
    grbc = "git rebase --continue"
    grbs = "git rebase --skip"
    grba = "git rebase --abort"
    ger = "git rerere"
    gp = "git push"
    gpf = "git push --force-with-lease"
    gpn = "git push --no-verify"
    gpo = "git push --set-upstream origin"
    gpr = "git push review master"
    gps = "git push stage stage:master"
    gpp = "git push production production:master"
    gtag = "git tag"
    gtagv = "git tag --verify"
    gtags = "git push --tags"
    gwl = "git worktree list"
    gwp = "git worktree prune"
    gr = "git reset" # Unstage staged files for commit.
    grm = "git reset --merge ORIG_HEAD" # Reset to original HEAD prior to merge.
    grom = "git fetch --all && git reset --hard origin/master" # Reset local branch to origin/master branch. UNRECOVERABLE!
    gel = "git rm"
    gelc = "git rm --cached" # Removes previously tracked file from index after being added to gitignore.
    grev = "git revert" # Revert a commit.
    grp = "git remote prune origin"
    glean = "git clean -d --force"
##### [Tar](http://www.gnu.org/software/tar/tar.html)
    bzc = "tar --use-compress-program=pigz --create --preserve-permissions --bzip2 --verbose --file"
    bzx = "tar --extract --bzip2 --verbose --file"
##### [PostgreSQL](http://www.postgresql.org)
    pgi = "initdb /usr/local/var/postgres"
    pgst = "pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start &"
    pgsp = "pg_ctl -D /usr/local/var/postgres stop -s -m fast"
##### [Redis](http://redis.io)
    reds = "redis-server /usr/local/etc/redis.conf &"
    redc = "redis-cli"
##### [Elasticsearch](https://www.elastic.co)
    esst = "elasticsearch --daemonize"
    essp = "kilp elasticsearch"
##### [chruby](https://github.com/postmodern/chruby)
    crb = "chruby"
##### [Ruby](https://www.ruby-lang.org)
    rbi = "ruby-install"
##### [Ruby Gems](https://rubygems.org)
    gemcr = '$EDITOR ~/.gem/credentials'
    geml = "gem list"
    gemi = "gem install"
    gemup = "gem update"
    gemu = "gem uninstall"
    gemc = "gem cleanup"
    gems = "gem server"
    gemp = "gem pristine"
    geme = "gem environment"
    gemuc = "gem update --system && gem update && gem cleanup"
    gemcli = "ag --depth=1 --files-with-matches --file-search-regex gemspec executables | xargs basename | cut -d. -f1 | _copy_and_print '\n'"
##### [Ruby Gems Whois](https://github.com/jnunemaker/gemwhois)
    gemw = "gem whois"
##### [Rake](https://github.com/ruby/rake)
    bert = "ber -T"
##### [Bundler](http://bundler.io)
    b = "bundle"
    bs = "bundle show"
    bl = "bundle lock"
    bi = "bundle install"
    bu = "bundle update"
    bo = "bundle outdated"
    bce = '$EDITOR $HOME/.bundle/config'
    bcon = "bundle console"
    be = "bundle exec"
    bch = "rm -f Gemfile.lock; bundle check"
##### [Milestoner](https://github.com/bkuhlmann/milestoner)
    ms = "milestoner"
    msc = 'milestoner --commits | _copy_and_print "\n"'
    mst = "milestoner --tag"
    msp = "milestoner --publish"
    mse = "milestoner --config --edit"
##### [Gemsmith](https://github.com/bkuhlmann/gemsmith)
    gs = "gemsmith"
    gsg = "gemsmith --generate"
    gse = "gemsmith --config --edit"
    gsr = "gemsmith --read"
    gso = "gemsmith --open"
    gsi = "bundle exec rake install"
    gsp = "bundle exec rake publish"
##### [Pragmater](https://github.com/bkuhlmann/pragmater)
    pas = "pragmater --add . --comments '# frozen_string_literal: true' --whitelist 'Gemfile' 'Guardfile' 'Rakefile' 'config.ru' 'bin/**/*' '.gemspec' '.rake' '.rb'"
##### [RSpec](http://rspec.info)
    bess = "bes spec"
    best = "bess --tag"
    besn = "bess --next-failure"
    besf = "bess --only-failures"
##### [Ruby on Rails](http://rubyonrails.org)
    scs = "sc --sandbox"
    sgc = "sg controller"
    sgm = "sg model"
    sgh = "sg helper"
    sgs = "sg scaffold"
    dbd = "ber db:drop"
    dbc = "ber db:create"
    dbm = "ber db:migrate"
    dbmt = "ber db:migrate && ber db:rollback && ber db:migrate"
    assp = "ber assets:precompile"
    assc = "ber assets:clean"
    notest = "ber notes:custom ANNOTATION=TODO"
    notesf = "ber notes:custom ANNOTATION=FIX"
    taild = "tail -f log/development.log"
    tailt = "tail -f log/test.log"
    res = "touch tmp/restart.txt"
##### [Elm](http://elm-lang.org)
    elmc = "elm repl"
    elms = "elm reactor"
    elmp = "elm package"
    elmpi = "elm package install"
    elmpp = "elm package publish"
    elmpb = "elm package bump"
    elmpd = "elm package diff"
##### [Jasmine](http://jasmine.github.io)
    berj = "ber jasmine"
    berjci = "ber jasmine:ci"
##### [Rubocop](https://github.com/bbatsov/rubocop)
    cop = "rubocop --display-cop-names"
    copc = "rubocop --auto-gen-config"
    copo = "rubocop --display-cop-names --only"
    copf = "rubocop --auto-correct"
    cops = "rubocop --show-cops"
##### [Rails Best Practices](https://github.com/railsbp/rails_best_practices)
    rbp = "rails_best_practices"
##### [SimpleCov](https://github.com/colszowka/simplecov)
    cov = "open coverage/index.html"
##### [Foreman](https://github.com/ddollar/foreman)
    fms = "foreman start --env /dev/null"
##### [Swift](https://developer.apple.com/swift)
    swift = "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift"
##### [Silver Surfer](https://github.com/ggreer/the_silver_searcher)
    agf = "ag --hidden --files-with-matches --file-search-regex"
##### [direnv](http://direnv.net)
    denva = "direnv allow"
    denvr = "direnv reload"
    denvs = "direnv status"
##### [Z](https://github.com/rupa/z)
    ze = '$EDITOR $HOME/.z'
##### [iTerm](https://www.iterm2.com)
    itl = 'printf "\033]0;${PWD##*/}\007"'
##### [Path Finder](http://www.cocoatech.com/pathfinder)
    pfo = 'open -a "Path Finder.app" "$PWD"'
##### [Vim](http://www.vim.org)
    v = "vim"
##### [Sublime Text](http://www.sublimetext.com)
    e = "sublime"
##### [Marked 2](http://marked2app.com)
    mo = "open -a Marked\ 2"
##### [asciinema](https://asciinema.org)
    cin = "asciinema"
    cinp = "asciinema play"
    cinu = "asciinema upload"

#### Functions

##### General
    t2s = Tab to Space - Convert file from tab to space indendation.
    cype = Colorized Type - Identical to "type" command functionality but with syntax highlighting.
    pss = Process Status (specialized) - Display process status, excluding the search of it, and ignoring case.
    kilp = Kill Process - Kill errant processes.
##### [less](http://en.wikipedia.org/wiki/Less_(Unix))
    lessi = Less Interactive - Inspect file, interactively.
##### [OpenSSL](https://openssl.org)
    sslc = SSL Certificate Creation - Create SSL certificate.
##### [curl](http://curl.haxx.se)
    curli = Curl Inspect - Inspect remote file with default editor.
##### [lsof](http://people.freebsd.org/~abe/)
    port = Port - List file activity on given port.
##### [Git](http://git-scm.com)
    gia = Git Init (all) - Initialize/re-initialize repositories in current directory.
    groot = Git Root - Change to repository root directory regardless of current depth.
    ginfo = Git Info - Print repository overview information.
    gstats = Git Statistics - Answer statistics for current project.
    gstatsa = Git Statistics (all) - Answer statistics for all projects in current directory.
    ghurn = Git Churn - Answer commit churn for project files (sorted highest to lowest).
    gount = Git Commit Count - Answer total number of commits for current project.
    gli = Git Log (interactive) - List commits with support to show/diff individual commits.
    ghow = Git Show - Show commit details with optional diff support.
    gile = Git File - Show file details for a specific commit (with optional diff support).
    gistory = Git File History - View file commit history (with optional diff support).
    glameh = Git Blame History - View file commit history for a specific file and/or lines (with optional diff support).
    guthorsa = Git Authors (all) - Answer author commit activity per project (ranked highest to lowest).
    gsta = Git Status (all) - Answer status of projects with uncommited/unpushed changes.
    gup = Git Update - Fetch commits, prune untracked references, review each commit (optional, with diff), and pull (optional).
    gync = Git Sync - Syncs up remote changes and deletes pruned/merged branches.
    gseta = Git Set Config Value (all) - Set key value for projects in current directory.
    ggeta = Git Get Config Value (all) - Answer key value for projects in current directory.
    gunseta = Git Unset (all) - Unset key value for projects in current directory.
    gailsa = Git Email Set (all) - Sets user email for projects in current directory.
    gail = Git Email Get - Answer user email for current project.
    gaila = Git Email Get (all) - Answer user email for projects in current directory.
    gince = Git Since - Answer summarized list of activity since date/time for projects in current directory.
    gday = Git Day - Answer summarized list of current day activity for projects in current directory.
    gweek = Git Week - Answer summarized list of current week activity for projects in current directory.
    gmonth = Git Month - Answer summarized list of current month activity for projects in current directory.
    gsup = Git Standup - Answer summarized list of activity since yesterday for projects in current directory.
    gtail = Git Tail - Answer commit history since last tag for current project (copies results to clipboard).
    gtaila = Git Tail (all) - Answer commit history count since last tag for projects in current directory.
    gash = Git Stash - Creates stash.
    gashl = Git Stash List - List stashes.
    gashs = Git Stash Show - Show stash or prompt for stash to show.
    gashp = Git Stash Pop - Pop stash or prompt for stash to pop.
    gashd = Git Stash Drop - Drop stash or prompt for stash to drop.
    gasha = Git Stash (all) - Answer stash count for projects in current directory.
    gucca = Git Upstream Commit Count (all) - Answer upstream commit count since last pull for projects in current directory.
    gpua = Git Pull (all) - Pull new changes from remote branch for projects in current directory.
    galla = Git Add (all) - Apply file changes (including new files) for projects in current directory.
    gcfp = Git Commit Fix and Push - Create fixup commit, push, and copy URL to clipboard.
    gcaa = Git Commit (all) - Commit changes (unstaged and staged) for projects in current directory.
    gcap = Git Commit and Push (all) - Commit and push changes for projects in current directory.
    gpob = Git Push Origin Branch - Pushes current branch to origin and sets upstream tracking.
    gpa = Git Push (all) - Push changes for projects in current directory.
    gri = Git Rebase (interactive) - Rebase commits, interactively.
    gbl = Git Branch List - List local and remote branch details.
    gbla = Git Branch List (all) - List current branch for projects in current directory.
    gbc = Git Branch Create - Create and switch to branch.
    gbs = Git Branch Switch - Switch between branches.
    gbsa = Git Branch Switch (all) - Switch to given branch for projects in current directory.
    gbna = Git Branch Number (all) - Answer number of branches for projects in current directory.
    gbd = Git Branch Delete - Select local and/or remote branches to delete.
    gbdm = Git Branch Delete Merged - Delete remote and local merged branches.
    gtagd = Git Tag Delete - Delete local and remote tag (if found).
    gwa = Git Worktree Add - Add and switch to new worktree.
    gwd = Git Worktree Delete - Deletes current Git worktree.
    grs = Git Reset Soft - Resets previous commit (default), resets back to number of commits, or resets to specific commit.
    grh = Git Reset Hard - Reset to HEAD, destroying all untracked, staged, and unstaged changes. UNRECOVERABLE!
    guke = Git Nuke - Permanently destroy and erase a file from history. UNRECOVERABLE!
    gvac = Git Verify and Clean - Verify and clean objects for current project.
    gvaca = Git Verify and Clean (all) - Verify and clean objects for projects in current directory.
##### [GitHub](https://github.com)
    gh = GitHub - View GitHub details for current project.
    ghpra = GitHub Pull Request (all) - Open pull request for all projects in current directory (non-master branches only).
##### [PostgreSQL](http://www.postgresql.org)
    pguc = PostgreSQL User Create - Create PostgreSQL user.
    pgud = PostgreSQL User Drop - Drop PostgreSQL user.
    pgt = PostgreSQL Template - Edit PostgreSQL template.
##### [Ruby](https://www.ruby-lang.org)
    rbva = Ruby Version (all) - Show current Ruby version for all projects in current directory.
    rbua = Ruby Upgrade (all) - Upgrade Ruby projects in current directory with new Ruby version.
    rbs = Ruby Server - Serve web content from current directory via WEBrick.
##### [Ruby Gems](https://rubygems.org)
    gemdep = Gem Dependency Search - Finds a gem defined within a Gemfile or a gemspec.
##### [RSpec](http://rspec.info)
    bes = Bundle Execute RSpec - Run RSpec via binstub or Bundler.
    besb = Bundle Exec RSpec Bisect - Debug RSpec failure using bisect to automatically determine where failure is occuring.
    besd = Bundle Exec RSpec Debug - Debug intermittent RSpec failure(s) by running spec(s) until failure is detected.
    besp = Bundle Exec RSpec Profile - Runs RSpec specs with profiling enabled.
    bera = Bundle Execute Rake (all) - Run default Rake tasks via binstub or Bundler for projects in current directory.
    bessa = Bundle Execute RSpec (all) - Run RSpec via binstub or Bundler for projects in current directory.
##### [Bundler](http://bundler.io)
    bj = Bundler Jobs - Answer maximum Bundler job limit for current machine or automatically set it.
    bcg = Bundler Config Gem - Configure Bundler gem path for development.
    bcim = Bundler Config Ignore Post-Install Message - Configure Bundler to ignore install messages for specified gem.
    boa = Bundle Outdated (all) - Answer outdated gems for projects in current directory.
    bua = Bundle Update (all) - Update gems for projects in current directory.
    bca = Bundle Clean (all) - Clean projects of gem artifacts (i.e. pkg folder).
    ber = Bundle Execute Rake - Run Rake via binstub or Bundler.
    beg = Bundle Execute Guard - Run Guard via binstub or Bundler.
##### [Ruby on Rails](http://rubyonrails.org)
    rew = Rails New - Create new Rails application from selected template.
    sc = Rails Script Console - Run Rails console.
    ss = Rails Script Server - Run Rails server.
    sg = Rails Script Generator - Run Rails generator.
    sdb = Rails Script Database Console - Run Rails database console.
##### [Rails ERD](https://github.com/voormedia/rails-erd)
    erd = Rails ERD - Generate Rails Entity Relationship Diagram (ERD).
##### [RailRoady](https://github.com/preston/railroady)
    rr = RailRoady Models - Generate diagrams for Rails models, controllers, or states.
##### [Travis CI](https://travis-ci.org)
    tcies = Travis CI Encrypt Slack - Encrypts and adds Code Climate token to notifications.slack section of YAML.
    tciec = Travis CI Encrypt Code Climate - Encrypts and adds Code Climate token to env.global section of YAML.
    tciea = Travis CI Encrypt (all) - Encrypt string for Travis CI-enabled projects in current directory.
##### [Image Magick](http://www.imagemagick.org)
    sketch = Sketch - Convert photo into a sketch. Inspired by [Whiteboard Cleaner Gist](https://gist.github.com/lelandbatey/8677901).
##### [FFmpeg](http://www.ffmpeg.org)
    gifize = Gifize - Convert video to animated GIF.
##### [asciinema](https://asciinema.org)
    cinr = asciinema Record - Create new asciinema recording.
##### Dotfiles
    dots = Dotfiles - Learn about dotfile aliases, functions, etc.

#### Git Hooks

    bundler_gemfile_path = Bundler Gemfile Path - Detect gem path statements.
    capybara_save_and_open_page = Capybara Save And Open Page - Detect save_and_open_page statements.
    comments_total = Print Comment Totals - Print project comment totals.
    ctags_rebuild = CTags Rebuild - Rebuild project .tags file.
    git_commit_message_prefix = Git Commit Message Prefix - Detect commit message invalid prefixes.
    git_commit_message_words = Git Commit Message Words - Detect commit message words to avoid.
    git_commit_message_length = Git Commit Message Length - Detect commit message long line lengths.
    jasmine_focus = Jasmine Focus - Detect Jasmine focus statements.
    java_script_debugger = JavaScript Debugger - Detect JavaScript debug statements.
    java_script_console = JavaScript Console - Detect JavaScript console statements.
    java_script_alert = JavaScript Alert - Detect JavaScript alert statements.
    pry_binding = Pry Binding - Detect Pry debug statements.
    reek_check = Reek - Scans Ruby code for poor style choices.
    rspec_focus = RSpec Focus - Detect RSpec focus.
    rubocop_check = Rubocop - Scans Ruby code for poor style choices.
    scss_lint_check = SCSS Lint - Scans SCSS code for poor style choices.

#### IRB, Pry, and Rails consoles

    ConsoleKit.locate - Locates source code for given object and method.
    ConsoleKit.search - Searches for object method for given pattern.
    ConsoleKit.copy - Copies data to OS X clipboard.
    ConsoleKit.paste - Pastes data from OS X clipboard.

#### Pry Aliases

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

- Patch (x.y.Z) - Incremented for small, backwards compatible, bug fixes.
- Minor (x.Y.z) - Incremented for new, backwards compatible, public API enhancements/fixes.
- Major (X.y.z) - Incremented for any backwards incompatible public API changes.

# Code of Conduct

Please note that this project is released with a [CODE OF CONDUCT](CODE_OF_CONDUCT.md). By
participating in this project you agree to abide by its terms.

# Contributions

Read [CONTRIBUTING](CONTRIBUTING.md) for details.

# License

Copyright (c) 2010 [Alchemists](https://www.alchemists.io).
Read [LICENSE](LICENSE.md) for details.

# History

Read [CHANGES](CHANGES.md) for details.
Built with [Bashsmith](https://github.com/bkuhlmann/bashsmith).

# Credits

Developed by [Brooke Kuhlmann](https://www.alchemists.io) at
[Alchemists](https://www.alchemists.io).
