# Dotfiles

[![Patreon](https://img.shields.io/badge/patreon-donate-brightgreen.svg)](https://www.patreon.com/bkuhlmann)

Shell scripts for applying default settings to UNIX-based operating systems.

By default, these are set to my preferences (namely for OSX) but you can change them to your liking by editing any of
the *.tt template files in the home_files directory. Read on to learn more.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
# Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Setup](#setup)
  - [Upgrade](#upgrade)
- [Usage](#usage)
      - [Aliases](#aliases)
        - [General](#general)
        - [Network](#network)
        - [[tmux](http://tmux.sourceforge.net)](#tmuxhttptmuxsourceforgenet)
        - [[Homebrew](http://brew.sh)](#homebrewhttpbrewsh)
        - [[Git](http://git-scm.com)](#githttpgit-scmcom)
        - [[Tar](http://www.gnu.org/software/tar/tar.html)](#tarhttpwwwgnuorgsoftwaretartarhtml)
        - [[PostgreSQL](http://www.postgresql.org)](#postgresqlhttpwwwpostgresqlorg)
        - [[Redis](http://redis.io)](#redishttpredisio)
        - [[rbenv](https://github.com/rbenv/rbenv)](#rbenvhttpsgithubcomsstephensonrbenv)
        - [[Ruby](https://www.ruby-lang.org/)](#rubyhttpwwwruby-langorg)
        - [[Ruby Gems](https://rubygems.org/)](#ruby-gemshttprubygemsorg)
        - [[Ruby Gems Whois](https://github.com/jnunemaker/gemwhois)](#ruby-gems-whoishttpsgithubcomjnunemakergemwhois)
        - [[Bundler](http://bundler.io)](#bundlerhttpgembundlercom)
        - [[Milestoner](https://github.com/bkuhlmann/milestoner)](#milestonerhttpsgithubcombkuhlmannmilestoner)
        - [[Gemsmith](https://github.com/bkuhlmann/gemsmith)](#gemsmithhttpsgithubcombkuhlmanngemsmith)
        - [[RSpec](http://rspec.info)](#rspechttprspecinfo)
        - [[ByeBug](https://github.com/deivid-rodriguez/byebug)](#byebughttpsgithubcomdeivid-rodriguezbyebug)
        - [[Ruby on Rails](http://rubyonrails.org)](#ruby-on-railshttprubyonrailsorg)
        - [[Ember](http://emberjs.com)](#emberhttpemberjscom)
        - [[Jasmine](http://jasmine.github.io)](#jasminehttpjasminegithubio)
        - [[Rubocop](https://github.com/bbatsov/rubocop)](#rubocophttpsgithubcombbatsovrubocop)
        - [[Rails Best Practices](https://github.com/railsbp/rails_best_practices)](#rails-best-practiceshttpsgithubcomrailsbprails_best_practices)
        - [[Foreman](https://github.com/ddollar/foreman)](#foremanhttpsgithubcomddollarforeman)
        - [[Capistrano](https://github.com/capistrano/capistrano)](#capistranohttpsgithubcomcapistranocapistrano)
        - [[Swift](https://developer.apple.com/swift)](#swifthttpsdeveloperapplecomswift)
        - [[iOS](https://developer.apple.com/ios)](#ioshttpsdeveloperapplecomios)
        - [[Silver Surfer](https://github.com/ggreer/the_silver_searcher)](#silver-surferhttpsgithubcomggreerthe_silver_searcher)
        - [[Z](https://github.com/rupa/z)](#zhttpsgithubcomrupaz)
        - [[Path Finder](http://www.cocoatech.com/pathfinder/)](#path-finderhttpwwwcocoatechcompathfinder)
        - [[Vim](http://www.vim.org)](#vimhttpwwwvimorg)
        - [[Sublime Text](http://www.sublimetext.com)](#sublime-texthttpwwwsublimetextcom)
        - [[Marked 2](http://marked2app.com)](#marked-2httpmarked2appcom)
        - [[asciinema](https://asciinema.org)](#asciinemahttpsasciinemaorg)
        - [[DocToc](https://github.com/thlorenz/doctoc)](#doctochttpsgithubcomthlorenzdoctoc)
      - [Functions](#functions)
        - [General](#general-1)
        - [[less](http://en.wikipedia.org/wiki/Less_(Unix))](#lesshttpenwikipediaorgwikiless_unix)
        - [[OpenSSL](https://openssl.org)](#opensslhttpsopensslorg)
        - [[curl](http://curl.haxx.se)](#curlhttpcurlhaxxse)
        - [[lsof](http://people.freebsd.org/~abe/)](#lsofhttppeoplefreebsdorgabe)
        - [[Git](http://git-scm.com)](#githttpgit-scmcom-1)
        - [[GitHub](https://github.com)](#githubhttpsgithubcom)
        - [[PostgreSQL](http://www.postgresql.org)](#postgresqlhttpwwwpostgresqlorg-1)
        - [[Ruby](http://www.ruby-lang.org)](#rubyhttpwwwruby-langorg-1)
        - [[RSpec](http://rspec.info)](#rspechttprspecinfo-1)
        - [[Bundler](http://gembundler.com)](#bundlerhttpgembundlercom-1)
        - [[Ruby on Rails](http://rubyonrails.org)](#ruby-on-railshttprubyonrailsorg-1)
        - [[Rails ERD](https://github.com/voormedia/rails-erd)](#rails-erdhttpsgithubcomvoormediarails-erd)
        - [[RailRoady](https://github.com/preston/railroady)](#railroadyhttpsgithubcomprestonrailroady)
        - [[Travis CI](https://travis-ci.org/)](#travis-cihttpstravis-ciorg)
        - [[Site Validator](https://github.com/sitevalidator/site_validator)](#site-validatorhttpsgithubcomjaimeiniestasite_validator)
        - [[Image Magick](http://www.imagemagick.org)](#image-magickhttpwwwimagemagickorg)
        - [[FFmpeg](http://www.ffmpeg.org)](#ffmpeghttpwwwffmpegorg)
        - [[asciinema](https://asciinema.org)](#asciinemahttpsasciinemaorg-1)
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

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Features

- Configures the Bash `.bashrc`, `.bash_profile`, and `.inputrc` files.
- Configures the `.hushlogin` file.
- Configures the [CTags](http://ctags.sourceforge.net) `.ctags` file.
- Configures the [Vim](http://www.vim.org) `.vimrc` file.
- Configures the [Git](http://git-scm.com) `.gitconfig`, `.gitignore`, and hook (i.e. `.git_template`) files.
- Configures the [Silver Surfer](https://github.com/ggreer/the_silver_searcher) `.agignore` file.
- Configures the [Ruby Gems](https://rubygems.org) `.gemrc` file.
- Configures the [Ruby](https://www.ruby-lang.org) `.irbrc` file.
- Configures the [Pry](http://pry.github.com) `.pryrc` file.
- Configures the [Ruby Debugger](http://bashdb.sourceforge.net/ruby-debug.html) `.rdebugrc` file.
- Configures the [RSpec](http://rspec.info) `.rspec` file.
- Configures the [Awesome Print](https://github.com/michaeldv/awesome_print) `.aprc` file.
- Configures the [Pow](http://pow.cx) `.powconfig` file.
- Configures the [PostgreSQL](http://www.postgresql.org/docs/9.3/static/app-psql.html) `.psqlrc` file.
- Configures the [Xray](https://github.com/brentd/xray-rails) `.xrayconfig` file.
- Configures [Sublime Text](http://www.sublimetext.com) as the default editor.
- Adds [Bash Completion](http://bash-completion.alioth.debian.org).
- Adds [Go](https://golang.org/) Bash support.
- Adds [rbenv](https://github.com/sstephenson/rbenv) Bash support.
- Adds [rbenv-vars](https://github.com/rbenv/rbenv-vars) settings.
- Adds [NPM](http://nodejs.org) Bash support.
- Adds [Travis CI](https://travis-ci.org) Bash support.
- Adds [Z](https://github.com/rupa/z) Bash support.

# Requirements

- [OSX](https://github.com/bkuhlmann/osx)

# Setup

Open a terminal window and execute the following commands:

Current Version (stable)

    git clone git://github.com/bkuhlmann/dotfiles.git
    cd dotfiles
    git checkout v18.0.0

Master Version (unstable)

    git clone git://github.com/bkuhlmann/dotfiles.git
    cd dotfiles

Edit any of the home_files/*.tt template files as you see fit. Then open a terminal window and execute the following
command to install:

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

## Upgrade

When upgrading to a new version, do the following to apply upgrades:

0. Run: `./run.sh l`. This will link any new files. If not using linked files, run `./run.sh d` and
   `./run.sh i` instead.
0. Run: `./run.sh c`. This will display file differences (if any -- usually, should only be excluded files).
0. Run: `bashs`. This will apply updates to the shell.
0. Change to the root directory where all projects are stored and run `gia` to re-initialize repositories with new Git
   Hook updates.

# Usage

#### Aliases

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
    cat = 'ccat -G Keyword = "turquoise" -G Punctuation="green" -G Decimal="green" -G Type="blue" -G Literal="blue" -G String="lightgray" -G Plaintext="white"'
    home = "cd $HOME"
    bashe = "$EDITOR $HOME/.bash/env.sh"
    bashs = "exec $SHELL"
    bashv = "bash --version"
    pss = 'ps axu | grep --invert-match grep | grep "$@" --ignore-case --color=auto'
    man = "gem man --system"
##### Network
    sshe = "$EDITOR $HOME/.ssh/config"
    key = "open /Applications/Utilities/Keychain Access.app"
    ipa = 'curl --silent checkip.dyndns.org | grep --extended-regexp --only-matching "[0-9.]+" | _copy_and_print'
    sniff = "sudo ngrep -W byline -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
    dnsi = "scutil --dns"
    dnss = "sudo dscacheutil -statistics"
    dnsf = "sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder && printf 'DNS cache cleared.n'"
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
    hbup = "brew update --all"
    hbug = "brew upgrade --all"
    hbp = "brew pin"
    hbpu = "brew unpin"
    hbd = "brew doctor"
    hbc = "brew cleanup"
    hbrb = "brew uninstall ruby-build && brew install --HEAD ruby-build"
##### [Git](http://git-scm.com)
    gi = "git init"
    gcle = "git config --local --edit"
    gcge = "git config --global --edit"
    gget = "git config"
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
    gdt = "git difftool"
    gdtc = "git difftool --cached"
    gdtm = "git difftool origin/master"
    glame = "git blame"
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
    gpur = "git pull --rebase" # Rebase the current branch on top of the upstream branch.
    gpuro = "gpur origin" # Rebase the current branch on top of the upstream origin branch.
    gpurom = "gpuro master" # Rebase the current branch on top of the upstream origin master branch.
    grbc = "git rebase --continue"
    grbs = "git rebase --skip"
    grba = "git rebase --abort"
    ger = "git rerere"
    gp = "git push"
    gpn = "git push --no-verify"
    gpo = "git push --set-upstream origin"
    gpr = "git push review master"
    gps = "git push stage stage:master"
    gpp = "git push production production:master"
    gtag = "git tag"
    gtagv = "git tag --verify"
    gtags = "git push --tags"
    gwp = "git worktree prune"
    gr = "git reset" # Unstage staged files for commit.
    grs = "git reset --soft HEAD^" # Undo previous commit.
    grh = "git reset --hard HEAD" # Reset to HEAD, destroying all staged/unstaged changes. UNRECOVERABLE!
    gdis = "git reset --hard" # Reset to commit, destroying all previous commits. UNRECOVERABLE!
    grm = "git reset --merge ORIG_HEAD" # Reset to original HEAD prior to merge.
    grom = "git fetch --all && git reset --hard origin/master" # Reset local branch to origin/master branch. UNRECOVERABLE!
    gel = "git rm"
    gelc = "git rm --cached" # Removes previously tracked file from index after being added to gitignore.
    grev = "git revert" # Revert a commit.
    grp = "git remote prune origin"
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
    rd = "rdoc -a -o tmp/doc/rdoc"
    rdo = "open tmp/doc/rdoc/index.html"
    rdd = "rm -rf tmp/doc/rdoc"
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
    bl = "bundle lock"
    bi = "bundle install"
    bu = "bundle update"
    bo = "bundle outdated"
    bce = "$EDITOR $HOME/.bundle/config"
    bcon = "bundle console"
    be = "bundle exec"
    bch = "rm -f Gemfile.lock; bundle check"
##### [Milestoner](https://github.com/bkuhlmann/milestoner)
    ms = "milestoner"
    msc = 'milestoner --commits | _copy_and_print "n"'
    mst = "milestoner --tag"
    msp = "milestoner --publish"
    mse = "milestoner --edit"
    msv = "milestoner --version"
##### [Gemsmith](https://github.com/bkuhlmann/gemsmith)
    gs = "gemsmith"
    gse = "gemsmith --edit"
    gsr = "gemsmith --read"
    gso = "gemsmith --open"
##### [RSpec](http://rspec.info)
    bess = "bes spec"
    besn = "bess --next-failure"
    besf = "bess --only-failures"
    besb = "bess --seed 2112 --bisect"
##### [ByeBug](https://github.com/deivid-rodriguez/byebug)
    bbr = "bundle exec byebug --remote localhost:1048"
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
##### [Ember](http://emberjs.com)
    em = "ember"
    emg = "ember generate"
    ems = "ember server"
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
    rbest = "rails_best_practices"
##### [Foreman](https://github.com/ddollar/foreman)
    fms = "foreman start"
##### [Capistrano](https://github.com/capistrano/capistrano)
    caps = "bec stage deploy"
    capp = "bec production deploy"
##### [Swift](https://developer.apple.com/swift)
    swift = "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift"
##### [iOS](https://developer.apple.com/ios)
    ios = "open /Applications/Xcode.app/Contents/Applications/iOS Simulator.app"
##### [Silver Surfer](https://github.com/ggreer/the_silver_searcher)
    agf = "ag --hidden --files-with-matches --file-search-regex"
##### [Z](https://github.com/rupa/z)
    ez = "$EDITOR $HOME/.z"
##### [Path Finder](http://www.cocoatech.com/pathfinder)
    pfo = 'open -a "Path Finder.app" "$PWD"'
##### [Vim](http://www.vim.org)
    v = "vim"
##### [Sublime Text](http://www.sublimetext.com)
    e = "sublime"
##### [Marked 2](http://marked2app.com)
    mo = "open -a Marked 2"
##### [asciinema](https://asciinema.org)
    cin = "asciinema"
    cinp = "asciinema play"
    cinu = "asciinema upload"
    cinv = "asciinema --version"
##### [DocToc](https://github.com/thlorenz/doctoc)
    toc = "doctoc --title '# Table of Contents'"

#### Functions

##### General
    t2s = Tab to Space - Convert file from tab to space indendation.
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
    ghurn = Git Churn - Answer commit churn for project files (sorted highest to lowest).
    gount = Git Commit Count - Answer total number of commits for current project.
    ghow = Git Show - Show commit details with optional diff support.
    gile = Git File - Show file details for a specific commit (with optional diff support).
    gistory = Git File History - View file commit history (with optional diff support).
    glameh = Git Blame History - View file commit history for a specific file and/or lines (with optional diff support).
    guthorsa = Git Authors (all) - Answer author commit activity per project (ranked highest to lowest).
    gsta = Git Status (all) - Answer status of projects with uncommited/unpushed changes.
    gup = Git Update - Fetch commits, prune untracked references, review each commit (optional, with diff), and rebase (optional).
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
    gpa = Git Push (all) - Push changes for projects in current directory.
    galla = Git Add (all) - Apply file changes (including new files) for projects in current directory.
    gcama = Git Commit and Message (all) - Commit changes (modified and new), with message, for projects in current directory.
    gcap = Git Commit and Push (all) - Commit and push changes for projects in current directory.
    gri = Git Rebase (interactive) - Rebase commits, interactively.
    gbl = Git Branch List - List local and remote branch details.
    gbc = Git Branch Create - Create and switch to branch.
    gbs = Git Branch Switch - Switch between branches.
    gbd = Git Branch Delete - Select local and/or remote branches to delete.
    gbdm = Git Branch Delete Merged - Delete locally merged branches.
    gbna = Git Branch Name (all) - List current branch for projects in current directory.
    gtagd = Git Tag Delete - Delete local and remote tag (if found).
    gwa = Git Worktree Add - Create and switch to new worktree.
    ghd = Git Hook Delete - Delete hooks for current project.
    ghda = Git Hook Delete (all) - Delete hooks for projects in current directory.
    gvac = Git Verify and Clean - Verify and clean objects for current project.
    gvaca = Git Verify and Clean (all) - Verify and clean objects for projects in current directory.
    guke = Git Nuke - Permanently destroy and erase a file from history. UNRECOVERABLE!
##### [GitHub](https://github.com)
    gh = GitHub - View GitHub details for current project.
##### [PostgreSQL](http://www.postgresql.org)
    pguc = PostgreSQL User Create - Create PostgreSQL user.
    pgud = PostgreSQL User Drop - Drop PostgreSQL user.
    pgt = PostgreSQL Template - Edit PostgreSQL template.
##### [Ruby](http://www.ruby-lang.org)
    rua = Ruby Upgrade (all) - Upgrade Ruby projects in current directory with new Ruby version.
    rserv = Ruby Server - Serve web content from current directory via WEBrick.
##### [RSpec](http://rspec.info)
    bes = Bundle Execute RSpec - Run RSpec via binstub or Bundler.
    bessa = Bundle Execute RSpec (all) - Run RSpec via binstub or Bundler for projects in current directory.
##### [Bundler](http://gembundler.com)
    bj = Bundler Jobs - Answer maximum Bundler job limit for current machine or automatically set it.
    bcim = Bundler Ignore Post-Install Message - Update Bundler to ignore install messages for specified gem.
    boa = Bundle Outdated (all) - Answer outdated gems for projects in current directory.
    bua = Bundle Update (all) - Update gems for projects in current directory.
    bca = Bundle Clean (all) - Clean projects of gem artifacts (i.e. pkg folder).
    ber = Bundle Execute Rake - Run Rake via binstub or Bundler.
    beg = Bundle Execute Guard - Run Guard via binstub or Bundler.
    bec = Bundle Execute Capistrano - Run Capistrano via binstub or Bundler.
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
##### [Travis CI](https://travis-ci.org/)
    tcie = Travis CI Encrypt (all) - Encrypt string for Travis CI-enabled projects in current directory.
##### [Site Validator](https://github.com/jaimeiniesta/site_validator)
    sv = Site Validator - Generate site validation report using W3C Validator.
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
    ctags_rebuild = CTags Rebuild - Rebuild project .tags file.
    git_commit_message_prefix = Git Commit Message Prefix - Detect commit message invalid prefixes.
    git_commit_message_words = Git Commit Message Words - Detect commit message words to avoid.
    git_commit_message_length = Git Commit Message Length - Detect commit message long line lengths.
    jasmine_focus = Jasmine Focus - Detect Jasmine focus statements.
    java_script_debugger = JavaScript Debugger - Detect JavaScript debug statements.
    java_script_console = JavaScript Console - Detect JavaScript console statements.
    java_script_alert = JavaScript Alert - Detect JavaScript alert statements.
    pry_binding = Pry Binding - Detect Pry debug statements.
    rspec_focus = RSpec Focus - Detect RSpec focus metadata.

#### IRB, Pry, and Rails consoles

    ConsoleKit.copy - Copies data to the MacOS clipboard.
    ConsoleKit.paste - Pastes data from the MacOS clipboard.
    ConsoleKit.http_codes - Prints Rails HTTP codes.
    ConsoleKit.http_symbols - Prints Rails HTTP symbols.

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

- Patch (x.y.Z) - Incremented for small, backwards compatible bug fixes.
- Minor (x.Y.z) - Incremented for new, backwards compatible public API enhancements and/or bug fixes.
- Major (X.y.z) - Incremented for any backwards incompatible public API changes.

# Code of Conduct

Please note that this project is released with a [CODE OF CONDUCT](CODE_OF_CONDUCT.md). By participating in this project
you agree to abide by its terms.

# Contributions

Read [CONTRIBUTING](CONTRIBUTING.md) for details.

# License

Copyright (c) 2010 [Alchemists](https://www.alchemists.io).
Read the [LICENSE](LICENSE.md) for details.

# History

Read the [CHANGELOG](CHANGELOG.md) for details.
Built with [Bashsmith](https://github.com/bkuhlmann/bashsmith).

# Credits

Developed by [Brooke Kuhlmann](https://www.alchemists.io) at [Alchemists](https://www.alchemists.io).
