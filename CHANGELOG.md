# v10.0.0

* Removed Espresso files from .gitignore.
* Removed .sass-cache from .gitignore.
* Removed the loading of pry-vterm_aliases within .irbrc.
* Removed --skip-javascript as a default option for the "rew" function.
* Fixed the "boa" function to only check for Gemfile.lock files.
* Updated the "sc", "ss", "sg", and "sdb" functions so they make use of the rails binstub (if it exists).
* Updated the "ber" alias to be a function.
* Updated the "bes" alias to be a function.
* Updated the "bec" alias to be a function.
* Updated the "gpua" function so that project names are always printed.
* Updated the "boa" function to catch for missing gems.
* Updated the "rua" function to indicate Ruby version updates per project.
* Updated the "gunseta" function to only print removed keys.
* Updated the "ggeta" function output for setting keys (found/not found).
* Updated the "gh" function so the 'u' option copies the GitHub URL to clipboard.
* Updated the "guthors" alias to count author commits by name instead of email.
* Added the "bua" function which performs a bundle update for all projets in current directory.
* Added the "tcie" function which can encrypt Travis CI values for projects.
* Added the "bca" function (i.e. bundle clean all) for cleaning up gem build artifacts.
* Added the "sketch" function for converting whiteboard photos into sketch drawnings.
* Added the "ghurn" function which answers the Git commit churn for project files (sorted highest to lowest).
* Added the "glamelog" function which answers the commit history of a specific file.
* Added the "guthorsa" function which answers author commit activity per project (ranked highest to lowest).
* Added the "galla" function for easy adding of all file changes per project.
* Added the "t2s" function which converts a file from tabs to spaces (with optional support for number of spaces).
* Added the "Rails Slim Template (experimental)" option to the "rew" function.
* Added support for GitHub Pull Requests to "gh" function.
* Added environment configs to .gitignore.
* Added code coverage folder to .gitignore.
* Added project information to "gcap" function output.
* Added [Priscilla](https://github.com/Arkham/priscilla) gem support to .irbrc.

# v9.0.0

* Removed the PostgreSQL aliases.
* Updated Gemsmith aliases to use "gs" prefixes.
* Updated the "gtail" function to always copy contents to the clipboard.
* Updated the "gbd" function with descriptive local/remote branch deletion messages.
* Added the "tfollowers" Bash function for capturing and comparing Twitter followers.
* Added Rails Engine default template generation support to the "rew" function.
* Added *.log files to .gitignore.
* Added "gfp" alias for "git fetch --prune".
* Added "gtagd" function for deleting a local and remote tag.
* Added Homebrew aliases.
* Added auto-pagination to "dots" for aliases and functions since they are lengthy.
* Added .psqlrc for an enhanced PostgreSQL prompt.
* Added "port" function for "sudo lsof -i :<port>" to quickly scan file usage on a given port.
* Added "gemp" alias for "gem pristine".
* Added "geme" alias for "gem environment".
* Added "gse" alias for "gemsmith edit".
* Added "gsr" alias for "gemsmith read".
* Added "agf" alias for quick Silver Surfer file searches.
* Refactored the "gashp" alias to be a function with multiple stash prompt support.
* Refactored the "gashs" alias to be a function with multiple stash prompt support.
* Refactored the "gashd" alias to be a function with multiple stash prompt support.
* Refactored the "gashl" alias to a function.

# v8.1.0

* Fixed install requirements to only point to the OSX project.
* Fixed "gls" alias so that search results no longer include graph information.
* Fixed "gsta" function so that Git project status does not display master...origin/master.
* Updated .powconfig to keep Pow alive for three hours instead of one.
* Updated the "gtaila" function to use normal, warning, caution, and danger commit coloring.
* Added the 'v' alias for vim.
* Added .vimrc settings.
* Added .inputrc settings.
* Added "rbil" alias for "rbenv install --list".
* Added "tags" to .gitignore.
* Added Pow HTTPS support.

# v8.0.0

* Fixed "dots" function bug where supplying an option to bypass the options prompt would throw an error.
* Fixed "dots" function so that leading whitespace is properly trimmed from labels and descriptions.
* Fixed function label comments to use "Label:" instead of "Name:" for label definitions.
* Enhanced the "dots" function to be able to print alias and function info grouped by section.
* Enhanced "curli" function by replacing short with long options for readability.
* Enhanced "curli" function to throw an error if URL is not supplied.
* Enhanced "dots" function with the 's' search option for easily searching for an alias/function.
* Enhanced the "rew" function with the [Rails Slim Template](https://github.com/bkuhlmann/rails_slim_template) option.
* Enhanced .gitconfig settings to always auto rebase when pulling down new commits.
* Enhanced .irbrc with the ability to answer HTTP status symbols (as used by Rails).
* Enhanced the "gld" alias format and colors.
* Enhanced bash function documentation with better parameter option documentation.
* Enhanced the "gince" function to throw an error if date/time is not supplied.
* Enhanced the "gince" function to take an optional author parameter.
* Enhanced the "gince" function to use the same formatting as the "gl" and "gld" aliases.
* Enhanced the "gamend" alias to not use the --message option.
* Refactored the "rew" function for readability and maintainability.
* Refactored alias and function code into smaller units of functionality.
* Renamed the following aliases to match existing naming conventions: opf -> pfo, md -> mo
* Renamed the "init_github" function to "githubi".
* Replaced the "gl" alias code with contents of the "gld" alias.
* Split bash functions into private and public function files.
* Switched default visual editor from vi to vim.
* Grouped all of the git log aliases together.
* Added the "curli" function which allows inspection of a remote file, via curl, within default editor.
* Added the "sshe" alias for editing the SSH config of current user within default editor.
* Added the "gh" function for opening GitHub page in default browser for current project.
* Added the RA.http_codes method to IRB (handy when in a Rack app).
* Added the "sv" function which will validate and generator a report for a given site.
* Added the "gdm" and "gdtm" aliases.
* Added the "gdtc" alias for showing a diff of cached/staged changes within difftool.

# v7.0.0

* Fixed function signatures where some functions were missing "()".
* Removed the "gus" alias for "git reset HEAD".
* Added the "gr" alias for "git reset".
* Added "gweek" function which answers Git commit history for the past week.
* Added "gmonth" function which answers Git commit history since beginning of current month.
* Added Kaleidoscope support for diff and merge to gitconfig.
* Added "gdt" alias for launching Git diffs with Kaleidoscope.
* Replaced the "gce" alias with the "gcle" alias for git config local edit of project settings.
* Enhanced the "gcle" alias to use the --edit option for readability.
* Added the "gcge" alias for git config global edit of settings.
* Added the "gaila" function which answers the current email address of all projects in current directory.
* Converted the "gail" alias to a function.
* Dropped the --global option from the "gail" function.
* Added the "gailsa" function which sets the local user email for each project in current directory.
* Added the "gunseta" function which will unset a Git config key for all projects in current directory.
* Added the "dots" function which can print supported alias and function information for all dotfiles.
* Added the "gget" alias for "git config".
* Added the "ggeta" function which answers a value for a given Git config key for all projects in current directory.
* Added the "gseta" function for setting a key=value pair for all projects in current directory.
* Enhanced the "l1" alias to copy output to clipboard.
* Enhanced Pry history to be shared with IRB history.
* Enhanced Pry to default to Sublime Text editor.
* Enhanced Pry debug aliases to be only defined if the Byebug debugger is present.
* Enhanced shell prompt to show dirty and untracked file statuses for git branches.
* Enhanced shell prompt to display Git stash state and upstream differences (if any).
* Enhanced shell prompt to only show current directory and not the full path.
* Enhanced shell prompt to show git branch and committer email address in a blue background.
* Enhanced the dots function to print function name and description information.

# v6.0.0

* Fixed 'l1' alias so that it lists dotfiles (minus . and ..).
* Switched to using sub-shells when traversing sub-directories for all functions.
* Switched from the pry-debugger to pry-byebug gem in irbrc.
* Switched from RDoc to Markdown for documentation.
* Updated the "gall" alias to use the --all option.
* Updated the "gcap" function to use long form Git options for better readability.
* Updated the "rew" function so that flags and local/remote options are easier to understand.
* Updated README to match GitHub project description.
* Updated "rew" local options to point to "Projects" path instead of the "Ruby" path.
* Updated the sc, ss, sg, and sdb functions to support Rails 2.x.x, 3.x.x, and 4.x.x.
* Added the "bertt" function which allows for easier testing of a specific Test::Unit test file.
* Added the "berts" alias for getting a summary of failing (if any) test files (including line numbers).
* Added the "bertv" alias for enabling Test::Unit to run tests in verbose mode.
* Added the "gus" alias (i.e. git reset HEAD).
* Added the "ggc" alias for validating and fixing dangling objects, freeing up disk space, improving performance, etc.
* Added the "gvca" function which validates and cleans all Git projects for current diretory.
* Added the "gail" alias for easily displaying/changing current global email address used for commits.
* Added the "gemuc" alias for gem update and clean of entire system.
* Added the 'w' Pry alias for "whereami".
* Added the "md" alias for opening Markdown files within the Marked app.
* Added a Versioning section to the README.
* Added tsl (list-sessions), tsa (attach-session), tsk (kill-session), and tsr (rename-session) aliases for tmux.
* Added vi as the default visual editor.
* Added the "rua" function for upgrading all projects in current directory to a new ruby version.
* Added Travis CI bash completion support.
* Added missing CHANGELOG, LICENSE, and README files.
* Added NPM to PATH.

# v5.2.0

* Force default Git editor to wait for files to be closed before returning.
* Updated shell script documentation.
* Fixed z.sh warnings when sourcing bashrc.
* Updated bash functions to use read line instead of tweaking the IFS variable for parsing directories with spaces.
* Modified gsta function to display branch status and unpushed changes in addition to uncommitted changes.
* Collapsed while/do statements to a single line.
* Added save to 'gash' alias so that git stashes can optionally be saved with a description.
* Added pretty print formatting to 'gashl' alias for git stash lists.
* Moved git grep (gg) next to git search git log search (gls).
* Dropped the glc alias in favor of the guthors alias (uses the author summary originally provided by the glc alias).

# v5.1.0

* Fixed bug with sublime not being defined prior to loading bash_* files as a necessary dependency.
* Fixed bug with opf alias where paths with spaces would fail to open properly.
* Fixed Git-related Bash functions where directory names would be split with spaces.
* Added the -f option for exporting functions.
* Added ez alias which speeds up opening the ~/.z config in the default editor.
* Added the xrayconfig.txt file which supports the xray-rails gem.
* Added the 'f' alias for the pry-debugger finish command.
* Added pry-rescue support.
* Added Bond gem support to .irbrc and .pryrc.
* Added breakpoint aliases for Pry to .pryrc.
* Added the gdis alias (i.e. git reset --hard).
* Added the gcp alias (i.e. git cherry-pick).
* Added the gpua function which allows one to "git pull" for all git-enable directories in current folder.
* Added boa Bash function which lists outdated gems for each project in current directory.
* Added the gifize function (allows one to easily convert video into an animated GIF.
* Added the gi alias (i.e. git init).
* Refactored the scripts in the functions folder.
* Updated run.sh usage.
* Switched from pry-nav to the pry-debugger gem.
* Updated the gpd Bash function to delete local branch regardless of merge status and made remote branch specific to 'origin'.
* Added gasha function which answers the git stash size of all projects in current directory.
* Renamed instance variable 'directory' to 'project' in directory loops for Bash functions.

# v5.0.0

* Fixed the timeout comment in the pow config.
* Fixed 'Enhancements' spelling typo in irbrc file.
* Default the $EDITOR variable to Sublime Text for all environments.
* Default to 'simple' when pushing (gitconfig).
* Added the gce alias for 'git config -e'
* Added the opf alias (i.e. opens current terminal path as a tab in Path Finder).
* Added Pry aliases for continue, step, and next as c, s, and n.
* Added guardrc support and dropped the -c option from the beg alias (provided via guardrc now).
* Tweaked .pryrc to match Bash prompt settings.
* Added the .aprc file for setting Awesome Print defaults.
* Add the Dotphiles resource to the README.
* Configured Bash history to remove duplicates, keep a history size of 1000, and exclude mundane commands from being entered in history.
* Added Hirb and Awesome Print support to the Pry console.
* Updated the installer to prompt for options before executing.
* Added the install option for checking currently installed file differences.
* Added the install option for linking dotfiles to this project.
* Added the install option for showing available dotfiles for install.
* Added the install option for deleting installed dotfiles.
* Added the geady alias (i.e. git rebase -i @{u}).
* Renamed the 'guthers' alias to 'guthors'.
* Renamed install.sh to run.sh.
* Bumped IRB Eval History to 1000.
* Reduced Bash history size to 1000.

# v4.1.0

* Applied RubyGems 2.0.0 syntax upgrades.
* Added the powconfig file. Thanks Eric.
* Removed the Code Climate badge - Not really relevant for this project.
* Removed the tree alias, using the Tree app instead.
* Added Z support for Bash.
* Added the gba alias (git branch --all).
* Renamed the gpcap alias to gcap and cleaned up the associated documentation.
* Upgraded the gtaila alias to color code counts: 0-9 (white), 10-19 (yellow), 20 or greater (red).
* Fixed if statement in gtaila function color check.
* Cleaned up the gtaila function documentation.
* Added a link to the Dotify project in the README.
* Added purple color to current directory info in shell prompt.
* Added additional Bash color definitions.
* Changed the command prompt colors to the following: timestamp (grey), Git branch (purple), and current directory (cyan).
* Added Nicolas Gallagher's dotfiles to the README.
* Broke up the command prompt code into easier to read segments.
* Switched IRB prompt to match Bash shell prompt (using pipes instead of brackets).
* Added the gls alias (i.e. gl + -S for search).
* Removed Windows support of Thumbs.db in gitignore.txt.
* Removed TextMate support in gitignore.txt.
* Removed SVN support in gitignore.txt.
* Ignore CTag metadata in gitignore.txt.
* Added parameter documentation for init_github function.
* Added the gday function to report git activity across all projects for today only.
* Refactored the duplicate gsup and gday function code into the gince function.

# v4.0.0

* Removed the extra spacing before time in the 'gld' alias.
* Split Bash aliases and functions into separate files.
* Fixed bash prompt so that word wrapping works.
* Fixed diagram aliases to ensure the doc/design folder exists prior to being executed.
* Dropped the debug alias.
* Added cyan coloring for project names in gsta and gsup aliases.
* Added the gcm alias (i.e. git commit -m).
* Added the rbi alias (i.e. rbenv install).
* Cleaned up file permissions.
* Added sgh alias (i.e. script/rails helper).
* Added the gbd alias for deleting local and remote branches.
* Added gbdm alias for deleting all merged branches.
* Added the gtaila function which counts the number of commits from last tag for all projects.
* Moved bash colors into seperate file.
* Removed excess carriage return per project results.
* Added the gpcap alias which commits and pushes changes for all projects that have changes.
* Removed the debundle code.
* Added color comments.
* Added the guthers alias (lists all authers/contributors on a project).
* Added the gap alias (i.e. git add --patch).
* Expanded git alias abbreviations to improve self documentation.
* Expanded all alias abbreviations, where able, in order to be more self documenting.
* Added Adam Jahnke's dotfile project to the README.
* Added the rdd bash alias (i.e. rm -rf _doc).
* Applied Code Climate GPA badge.

# v3.0.0

* Added ipa alias.
* Added the groot alias. Thanks Eoin.
* Added the gwc Git alias.
* Added l1 alias for listing files and directories as single line output only.
* Added a Bash function for reporting Git activity across all projects for standup reports.
* Added Git URL aliases for GitHub and Heroku to gitconfig.txt
* Added the gms alias.
* Added alias for gdc.
* Added the sniff alias for monitoring TCP/IP traffic (pulled from Paul Irish's dotfiles).
* Added the bert aliase for running Test::Unit tests.
* Added the beg alias for running guard.
* Added usage printout for rew function.
* Added third option to rew function which allows for building a new rails project using local rails setup template options.
* Added the glatest git alias which answers the latest update to the project with a datestamp.
* Added the rbu alias (i.e. rbenv uninstall).
* Added support for current git branch to command prompt display.
* Added Bash Completion support.
* Added yellow color to Git branch info in command prompt.
* Added glame alias (i.e. git blame).
* Added the gsta function (i.e. git status all) which answers the status of any project with uncommitted changes.
* Added Code Climate support.
* Added the rbvars alias.
* Added the rfixes alias.
* Added the gtail alias which shows all commits since last tag.
* Added CONTRIBUTING guidelines per GitHub requirements.
* Added Ruby 1.9.x syntax.
* Added the gashl, gashs, gashp, gashd, and gashc for git stash list, show, pop, drop, and clear respectively.
* Modified the command prompt to keep the cursor at the first position.
* Modified the copy to clipboard message for the glh alias.
* Modified the gsup alias to output commits in reverse order (oldest first, newest last).
* Modified the 'ber' alias to be 'bundle exec rake'.
* Modified the rew function to make it easier to select which templates to build from when generating a new Rails app.
* Modified the rew alias so that the template choice can be supplied without always being prompted for one.
* Modified alias rbw to be rbp (i.e. rbenv which) and changed rbw to alias rbenv whence.
* Modified the PRY prompt to resemble the IRB prompt.
* Modified bash prompt colors (grey for time and cyan for git branch info).
* Modified all git logging to show full commit hash.
* Removed the cpath alias and upgraded the p alias to always copy path to clipboard.
* Removed the hard coded author name for the gsup alias - picks up git user name from .gitconfig file instead.
* Removed the Bash color codes.
* Removed Pry editor config since it defaults to sublime.
* Removed the bec alias for cucumber and repurposed it to capistrano (i.e. bundle exec cap).
* Removed the Apache aliases.
* Removed the Ruby GC exports (configured by rbenv-vars - see the OSX project for further details).
* Removed the bers alias and replaced with the bes and bess aliases for using RSpec.
* Removed the Ruby install script and added a Bash script instead.

# v2.2.0

* Fixed awesome_print requirement for .irbrc.
* Removed the .railsrc file and added the "rew" fuction to the .bashrc file with support for multi-template setup.
* Removed the Wirble gem and switched to Wirb.
* Added Pry support (see pryrc.txt).
* Added Ruby heap/memory settings.
* Added rdo alias for quickly launching generated RDoc.
* Added gpur alias for 'git pull --rebase'.
* Added glh alias for acquiring full hash of last commit and auto-copy to clipboard support.
* Added gamend alias for git comment ammending.
* Added glf alias for showing recent git changes in HEAD prior to doing a git pull.
* Added aliases for rbenv.
* Added debundler support the .irbrc file.
* Added IRB auto-completion and history support.
* Added the GitHub Dotfiles project to the README.

# v2.1.0

* Fixed checkout instructions.
* Fixed issues with IRB and Rails IRB command prompts.
* Added sdb alias for rails dbconsole.
* Added RubyMine project files to gitignore file.
* Added Espresso files to gitignore file.
* Added a resource link for bash shell colors.
* Added the rassp and rassc aliases.
* Added Capistrano aliases for stage and production deploys.
* Moved the Rails IRB logic into the irbrc file and left the railsrc file with only default settings.
* Added aliases for Sitemap Generator gem.
* Added alias for bundle outdated.
* Droped RailRoad gem support and switched to the Railroady gem.
* Updated the dmodels, dcontrollers, and dstate aliases.
* Added bcon alias for bundle console.
* Renamed all the gem alises to gem*.
* Dropped TextMate support, switched to Sublime Text 2.
* Changed EDITOR export to point to sublime.
* Changed 's' alias to 'e' to represent the default editor and dropped the dot in the alias.
* Updated the bashs alias with better cross-platform support.
* Replaced use of the tilde with $HOME variable.
* Added OSX and Ubuntu path setup for rbenv.
* Updated README with link to Mathias Bynens' dotfiles project.
* Removed the aliases for clearing rails logs since the rake:log clear tasks does this now.

# v2.0.0

* Fixed the bch and rebundle aliases.
* Added .sass-cache to .gitignore.
* Added rbenv support.
* Added an alias for Heroku+ account switching.
* Added new rails app generation defaults to the .railsrc file.
* Updated the .gitconfig documentation.
* Removed rake call for the 'res' alias.
* Removed the -w option from the Ruby opts export.
* Removed the Icon? option from gitignore.
* Removed the .rmvrc template and RVM support completely.
* Removed the binary warning flag.
* Removed the rdemo and rdemot .bashrc aliases.

# v1.2.0

* Added the glast, gres, and grev Git aliases.
* Removed the ActionView and route configurations from the railsrc.txt file.
* Upgraded to Rails 3.0.11 for Rails Template Setup alias.
* Added Apache start and stop, Gemsmith, and Ruby profile aliases.
* Added git stash alias.
* Added the additional aliases for bundler: b, bch, bi, bu, and be.
* Added references to James Edward Grey II and Gabe Berke-Williams' dotfiles projects.
* Added project-specific default settings for RVM.
* Updated the IRB copy to clipboard method and added a paste method.
* Added bolded and underlined colors as well as background colors.
* Added link for Bash colors.
* Added the gln alias for git log --name-status.
* Added the init_github method to the bashrc file.
* Renamed setup.rb to install.rb and added configuration documentation to the README.
* Added the gemrc.txt template.
* Added RVM fix for loading new Ruby environments when creating new terminal tabs.
* Updated README with new Gemsmith specs.

# v1.1.0

* Removed FileUtils requirement for setup.rb.
* Added existing file check with corresponding console notification.

# v1.0.0

* Initial version.
