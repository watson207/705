#
# This is the default .cshrc provided to users.
#
# The commands in this file are executed each time a new tcsh shell
# is started.
# 03/31/13
#
umask 022
#
# $path is inherited from system startup scripts, if you override it,
# you're on your own. Append ".".
set path=($path .)

#
# Environment Variables making things nice. 
#
setenv EDITOR /usr/bin/emacs
setenv VISUAL /usr/bin/emacs
setenv MAIL /var/mail/$USER
setenv PAGER /usr/bin/less
setenv NNTPSERVER news.bu.edu
#
# disable core dumps
limit coredumpsize 0
#
# shell variables -- tcsh has over 100, see the man page for more details
#
set autoexpand
set autolist=ambiguous
# ^D causes shell to complain instead of logging us out
set ignoreeof
set history = 100
# don't allow ">" redirection to overwrite an existing file
set noclobber
# set prompt to "hostname:cwd % " -- see tcsh man page for all the options
set prompt="%B%m%b:%c2 %% "
# ask before executing rm *
set rmstar
# how many commands to save in ~/.history
set savehist = 100
# don't time us out
unset autologout
# don't inform us when new mail arrives
unset mail
#
# use the tcsh builtin version of ls -F
alias ls ls-F
#
# User defined aliases
#
alias rm "rm -i"
