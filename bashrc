#Set what the command prompt looks like. Prompt is the head directory
color_bright_red='\[\e[1;31m\]'
color_reset='\[\e[0m\]'
export PS1=${color_bright_red}'\W: '${color_reset}

#Append locations to the path
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:\
/usr/texbin:/Users/SamuelWenninger/bash-scripts:\
/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/x86_64

#Vi like navigation of the command line
set -o vi

#Autofix switched letters/misspellings
shopt -s cdspell

#Append to .bash_history when closing a session, rather than overwriting it
shopt -s histappend

#Multi-line commands appear as a single line in .bash_history
shopt -s cmdhist

#Update columns and rows if windows size changes
shopt -s checkwinsize

#Do not list suggestions if I try to tab complete an empty line
shopt -s no_empty_cmd_completion

#Allow a larger number of .bash_history entries
export HISTSIZE=1000000

#Allow a larger .bash_history file size
export HISTFILESIZE=1000000

#Don't add commands starting with a space or repeated commands to .bash_history
export HISTCONTROL=ignoreboth

#Record timestamps in .bash_history
export HISTTIMEFORMAT='%F %T '

#Immediately record history to .bash_history, rather than after a session ends
export PROMT_COMMAND='history -a'

#Ensure that tmux is installed on the system, and run it at the start of bash
if command -v tmux>/dev/null; then
    [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

#Change the default behavior of 'ls'. Standard 'ls' can be used by doing '\ls'
#'-F': distinguishes between directories, files, executables, etc.
#'-A': show all hidden files except '..' and '.'
#'-h': shows files sizes in human readable format when '-l' is used
alias ls='ls -FAh'

#Shorter clear command call
alias c=clear

#Human readable display free disk space
alias df='df -h'

#Make sure that Vim is always used rather than Vi
alias vi='vim'

#Copy is recursive, preserves ownership/dates/etc, interactive, and verbose
alias cp='cp -rpiv'

#Remove is interactive and verbose to prevent deleting things unintentionally
alias rm='rm -iv'

#Move is interactive and verbose to prevent unintentional overwrites
alias mv='mv -iv'

#Shortcuts for editing various rc files
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'

if [ $MACHTYPE == 'x86_64-apple-darwin15' ]; then
    #Shortcut commands to get to class directories
    alias SC='cd ~/Documents/rpi/junior/fall-2015/speech-communication; ls'
    alias SDAD='cd ~/Documents/rpi/junior/fall-2015/software-design-and-documentation; ls'
    alias OS='cd ~/Documents/rpi/junior/fall-2015/operating-systems; ls'
    alias CANS1='cd ~/Documents/rpi/junior/fall-2015/cryptography-and-network-security-1; ls'
    alias PL='cd ~/Documents/rpi/junior/fall-2015/programming-languages; ls'
elif [ $MACHTYPE == 'x86_64-pc-linux-gnu' ]; then
    alias CANS1='cd /media/sf_Documents/rpi/junior/fall-2015/cryptography-and-network-security-1'
    alias OS='cd /media/sf_Documents/rpi/junior/fall-2015/operating-systems'
    alias PL='cd /media/sf_Documents/rpi/junior/fall-2015/programming-languages'
    alias SDAD='cd /media/sf_Documents/rpi/junior/fall-2015/software-design-and-documentation'
fi
