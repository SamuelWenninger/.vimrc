################################################################################
# Start-up Commands
################################################################################

# Ensure that tmux is installed on the system, and run it at the start of bash
if command -v tmux>/dev/null; then
    [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

################################################################################
# Exports
################################################################################

export VISUAL='vim'
export EDITOR='$VISUAL'
export GIT_EDITOR='$VISUAL'

# Allow a larger number of .bash_history entries
export HISTSIZE=1000000

# Allow a larger .bash_history file size
export HISTFILESIZE=1000000

# Don't add commands starting with a space or repeated commands to .bash_history
export HISTCONTROL=ignoreboth

# Record timestamps in .bash_history
export HISTTIMEFORMAT='%F %T '

# Immediately record history to .bash_history, rather than after a session ends
export PROMT_COMMAND='history -a'

################################################################################
# General Functions
################################################################################

# Example usage: repeat_char "10" "*" gives **********
repeat_char() {
  # Store a string of length INPUT_TEXT_LENGTH made up of spaces
  printf -v space_string '%*s' $1 ''
  # Substitute spaces with the given character
  echo "${space_string// /$2}"
}

print_text_with_border() {
  INPUT_TEXT_LENGTH=${#1}
  repeat_char $(($INPUT_TEXT_LENGTH + 4))  "-"
  echo $(printf "| %s |" "$1")
  repeat_char $(($INPUT_TEXT_LENGTH + 4))  "-"
}

handle_error() {
  ERROR_TEXT="ERROR!!! SOMETHING WENT WRONG!!!"
  ERROR_TEXT_LENGTH=${#ERROR_TEXT}
  repeat_char $(($ERROR_TEXT_LENGTH + 4))  "-"
  echo $(printf "| %s |" "$ERROR_TEXT")
  repeat_char $(($ERROR_TEXT_LENGTH + 4))  "-"
  return 1
}

################################################################################
# Prompt Settings
################################################################################

# Set what the command prompt looks like. Prompt is the head directory
source ~/.git-prompt.sh
GIT_PS1_SHOWUPSTREAM="auto verbose"
color_bright_red='\[\e[1;31m\]'
color_blue='\[\e[1;34m\]'
color_reset='\[\e[0m\]'
PS1="\h|${color_bright_red}\w${color_blue}\$(__git_ps1)${color_reset}: "

################################################################################
# Shell Settings
################################################################################

# Vi like navigation of the command line
set -o vi

# Autofix switched letters/misspellings
shopt -s cdspell

# Append to .bash_history when closing a session, rather than overwriting it
shopt -s histappend

# Multi-line commands appear as a single line in .bash_history
shopt -s cmdhist

# Update columns and rows if windows size changes
shopt -s checkwinsize

# Do not list suggestions if I try to tab complete an empty line
shopt -s no_empty_cmd_completion

# Sends SIGHUP to all jobs when an interactive shell exits
shopt -s huponexit

# Commands like !-2 or !<history-number> will be expanded when enter is pressed rather than
# blindly executed
shopt -s histverify

# Disable XON/XOFF so it doesn't interfere with Ctrl-S (cycle forward through interactive
# history search
stty -ixon

################################################################################
# General Aliases
################################################################################

# Change the default behavior of 'ls'. Standard 'ls' can be used by doing '\ls'
# '-F': distinguishes between directories, files, executables, etc.
# '-A': show all hidden files except '..' and '.'
# '-h': shows files sizes in human readable format when '-l' is used
alias ls='ls -FAh --color'

# Shorter clear command call
alias c=clear

# Human readable display free disk space
alias df='df -h'

# Make sure that Vim is always used rather than Vi
alias vi='vim'

# Copy is recursive, preserves ownership/dates/etc, interactive, and verbose
alias cp='cp -rpiv'

# Remove is interactive and verbose to prevent deleting things unintentionally
alias rm='rm -iv'

# Move is interactive and verbose to prevent unintentional overwrites
alias mv='mv -iv'

# Shortcuts for editing various rc files
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'

alias ffind='find . -type f -name'
alias grep='grep -iInR --color'

################################################################################
# Git Aliases
################################################################################

# Git update master
alias gum='git checkout master && git fetch upstream && git merge upstream/master --ff-only && git checkout -'

# Git update master and rebase the current branch on the newly updated master
alias gumar='git checkout master && git fetch upstream && git merge upstream/master --ff-only && git checkout - && git rebase master'

# Git update dev
alias gud='git checkout dev && git fetch upstream && git merge upstream/dev --ff-only && git checkout -'

# Git update dev and rebase the current branch on the newly updated master
alias gudar='git checkout dev && git fetch upstream && git merge upstream/dev --ff-only && git checkout - && git rebase dev'

# Git checkout
alias gco='git checkout'
__git_complete gco _git_checkout

# Git branch
alias gb='git branch'

# Git remote
alias gr='git remote'

# Git push fork
alias gp='git push'
__git_complete gp _git_push

# Git push current branch to fork
alias gpf='git push fork $(git rev-parse --abbrev-ref HEAD)'

# Git push current branch to fork
alias gub='git_update_branch'

git_update_branch () {
  git fetch upstream
  CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"
  git merge upstream/$CURRENT_BRANCH --ff-only
  echo "$CURRENT_BRANCH is now up to date"
}

alias gf='git fetch'
__git_complete gf _git_fetch

alias gm='git merge'
__git_complete gm _git_merge

alias gs='git status'

# Show all and run gitk in the background
alias gk='gitk --all'

alias grb='git rebase'
__git_complete grb _git_rebase

# Add all edited files to the commit
alias gaa='git add --all'

# Amend the previous commit without changing the commit message
alias gcma='git commit --amend --no-edit'

alias gaacpf='gaa && git commit -m "fix(stuff): fixed stuff" && gpf'

alias clean-deps='git clean -fdx && \rm -rf bower_components && bower cache clean && bower install && yarn install --ignore-engines'
