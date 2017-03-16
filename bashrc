###########################################################
# ~/.bashrc
###########################################################
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

###########################################################
# Colors
#
# Tput color variable

hl=$(tput smso)
nohl=$(tput rmso)
underline=$(tput smul)
nounderline=$(tput rmul)
bold=$(tput bold)

# Reset color
nocolor=$(tput sgr0)

# Color using ANSI escape
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)

backgreen=$(tput setab 2)
backyellow=$(tput setab 3)
backblue=$(tput setab 4)
backmagenta=$(tput setab 5)
backcyan=$(tput setab 6)
backwhite=$(tput setab 7)


###########################################################
# Shell Options
#
# See man bash for more options...
#
# Don't wait for job termination notification
# set -o notify
#
# Don't use ^D to exit
# set -o ignoreeof
#
# Use case-insensitive filename globbing
shopt -s nocaseglob
#
# Make bash append rather than overwrite the history on disk
shopt -s histappend
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
shopt -s cdspell

# Auto cd
#shopt -s autocd

# Enable ** completion
shopt -s globstar

# Enable extanded matching features
shopt -s extglob

###########################################################
# Prompt

PS1="[$bold\u$nocolor @ \h > $red\w$nocolor ] [$cyan\D{%Y-%W-%d} $green\t$nocolor]\n[\!] : \$ "

###########################################################
# Completion options
#
# These completion tuning parameters change the default behavior of bash_completion:
#
# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1
#
# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1
#
# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# [[ -f /etc/bash_completion ]] && . /etc/bash_completion

###########################################################
# History Options
#
# Don't put duplicate lines in the history.
# export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
#
# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

###########################################################
# Aliases
#
# Some people use a different file for aliases
# if [ -f "${HOME}/.bash_aliases" ]; then
#   source "${HOME}/.bash_aliases"
# fi
#
# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
#
# Interactive operation...
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
#
# Default to human readable figures
# alias df='df -h'
# alias du='du -h'
#
# Misc :)
 alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
# alias egrep='egrep --color=auto'              # show differences in colour
# alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
# alias ls='ls -hF --color=tty'                 # classify files in colour
# alias dir='ls --color=auto --format=vertical'
# alias vdir='ls --color=auto --format=long'
# alias ll='ls -l'                              # long list
# alias la='ls -A'                              # all but . and ..
# alias l='ls -CF'                              #

alias untar='tar -zxvf'
alias dotar='tar -cf'
alias dozip='zip -r'
alias so='source'
alias ls='ls --color=auto'
alias ll='ls -lashF --color=auto'
alias lt='ls -lashFt --color=auto'
alias xt='xterm'
alias grep='grep --color=auto'


