HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000

if [ -f ${HOME}/.common_profile ]; then
        . ${HOME}/.common_profile
fi

if [ -d ${HOME}/bin ]; then
        export PATH=$PATH:${HOME}/bin
fi

if [ -d ${HOME}/.local/bin ]; then
        export PATH=$PATH:${HOME}/.local/bin
fi


#PS1="\e[0;1m\u\e[0m\h \w \$ "
PS1="\w $ "
source ~/.shellalias

export LESS=' -R '
export SHELL="/bin/bash"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Z
if which brew 2>/dev/null; then
    . `brew --prefix`/etc/profile.d/z.sh
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
elif [ -e ~/Projects/oss/z/z.sh ]; then
    . ~/Projects/oss/z/z.sh
fi
export EDITOR="emacsclient"
export ALTERNATE_EDITOR="emacs"
export BROWSER="chromium"
