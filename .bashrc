HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000

if [ -f ${HOME}/.common_profile ]; then
        . ${HOME}/.common_profile
fi

if [ -d ${HOME}/bin ]; then
        export PATH=$PATH:${HOME}/bin
fi

#PS1="\e[0;1m\u\e[0m\h \w \$ "
PS1="\w $ "
source ~/.shellalias

export LESS=' -R '
export SHELL="/bin/bash"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Z
. `brew --prefix`/etc/profile.d/z.sh
