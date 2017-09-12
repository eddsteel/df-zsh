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

### Z
export EDITOR="emacsclient"
export ALTERNATE_EDITOR="emacs"
export BROWSER="chromium"

# The next line updates PATH for the Google Cloud SDK.
#source '/Users/edward/Desktop/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
#source '/Users/edward/Desktop/google-cloud-sdk/completion.bash.inc'

unset ${!DOCKER_*}
