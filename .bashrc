# most things are in .profile. Use a login shell.
#
export SHELL="/bin/bash"

# It's such a hassle to make emacs run a login shell.
if [ ! -z "${INSIDE_EMACS}" ]; then
    . ~/.profile
fi



