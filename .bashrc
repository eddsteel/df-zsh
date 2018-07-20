HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000

if [ -f ${HOME}/.common_profile ]; then
    . ${HOME}/.common_profile
fi

if [ -f ${HOME}/.workrc  ]; then
    . ${HOME}/.workrc
fi

if [ -f ${HOME}/.shellalias ]; then
    . ${HOME}/.shellalias
fi

for d in bin .local/bin .cabal/bin; do
  if [ -d ${HOME}/$d ]; then
        export PATH=$PATH:${HOME}/$d
  fi
done

PS1="\w $ "


export LESS=' -R '
export SHELL="/bin/bash"

export PATH="/usr/local/sbin:$PATH"

if which emacs > /dev/null; then
    export EDITOR="emacsclient"
    export ALTERNATE_EDITOR="emacs"
fi

if which brew > /dev/null; then
    . $(brew --prefix)/etc/bash_completion
fi
