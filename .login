#
# This is the default standard .login provided to users.
# 03/31/13

if (! $?SGE_ACCOUNT ) then
    if (! $?ENVONLY) then
	# Set the interrupt character to Ctrl-c and do clean backspacing.
	if (-t 0) then
	    stty intr '^C' susp ^Z erase '^?' echoe 
	endif

	# Set the TERM environment variable
	eval `tset -s -Q`
    endif

    # Set the default X server.
    if ($?DISPLAY == 0) then
	if ($?REMOTEHOST) then
	    setenv DISPLAY ${REMOTEHOST}:0
	else
	    setenv DISPLAY :0
	endif
    endif

    if ( -f /usr/local/bin/msgs ) /usr/local/bin/msgs -f
endif
