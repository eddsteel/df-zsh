HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000

if [ -f ${HOME}/.common_profile ]; then
    . ${HOME}/.common_profile
fi

if [ -f ${HOME}/.workrc  ]; then
    . ${HOME}/.workrc
fi

for d in bin .local/bin .cabal/bin; do
  if [ -d ${HOME}/$d ]; then
        export PATH=$PATH:${HOME}/$d
  fi
done

PS1="\w $ "
source ~/.shellalias

export LESS=' -R '
export SHELL="/bin/bash"

export PATH="/usr/local/sbin:$PATH"

export EDITOR="emacsclient"
export ALTERNATE_EDITOR="emacs"

if $(which brew); then
    . $(brew --prefix)/etc/bash_completion
fi
