HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000

if [[ -f ~/.docker/default-machine ]]; then
  default_machine=$(cat ~/.docker/default-machine)
fi
eval $(timeout 3 docker-machine env ${default_machine:-dev} 2>/dev/null)

if [ -f ${HOME}/.common_profile ]; then
    . ${HOME}/.common_profile
fi

for d in bin .local/bin .cabal/bin; do
  if [ -d ${HOME}/$d ]; then
        export PATH=$PATH:${HOME}/$d
  fi
done


#PS1="\e[0;1m\u\e[0m\h \w \$ "
PS1="\w $ "
source ~/.shellalias

export LESS=' -R '
export SHELL="/bin/bash"

export PATH="/usr/local/sbin:$PATH"

### Z
if which brew >/dev/null 2>/dev/null; then
    . `brew --prefix`/etc/profile.d/z.sh
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
    export NVM_DIR="$HOME/.nvm"
    . "$(brew --prefix nvm)/nvm.sh"
elif [ -e ~/Projects/oss/z/z.sh ]; then
    . ~/Projects/oss/z/z.sh
fi
export EDITOR="emacsclient"
export ALTERNATE_EDITOR="emacs"
export BROWSER="chromium"
alias ls='ls --color'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
