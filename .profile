# -*- mode: sh -*-
#
alias srsly='sudo $(fc -ln -1)'
alias bloop='~/.bloop/bloop-ng.py bloop.Cli'
alias ec='emacsclient --no-wait'
alias ga='git add'
alias gam='git commit -am'
alias gap='git add -p'
alias gau='git add -u'
alias gaup='git add -up'
alias gb='git branch'
alias gc='git checkout'
alias gcl='git clone'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gl='git pull'
alias glg='git lg'
alias glgh='git lgh'
alias glr='git pull --rebase'
alias gm='git commit -m'
alias gma='git commit --amend --reuse-message=HEAD'
alias gp='git push'
alias gpr='hub pull-request'
alias gr='git rm'
alias gra='git remote add'
alias grr='git remote remove'
alias gs='git status'
alias gsr='find . -type d -name ".git" -print -exec git --git-dir="{}" --work-tree="{}/.." status \;'
alias la='ls -a --color=auto'
alias ssh='TERM=vt100 ssh'
alias stree='tree --prune -P *.scala'
alias vlc='vlc -f'
alias vm='vagrant'

alias ..='cd ..'
alias ...='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'
alias ..6='cd ../../../../../..'

if which emacs > /dev/null; then
    export EDITOR="emacsclient"
    export ALTERNATE_EDITOR="emacs"
fi

for d in bin .local/bin .cabal/bin go/bin; do
  if [ -d ${HOME}/$d ]; then
        export PATH=$PATH:${HOME}/$d
  fi
done
export PATH="/usr/local/sbin:$PATH"
export PATH=/usr/local/opt/wget/bin:$PATH::/usr/local/opt/curl/bin

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000

export PATH="$PATH:/usr/local/bin"
export LESS=' -R '

if [ -f ${HOME}/.workrc  ]; then
    . ${HOME}/.workrc
fi

if which brew > /dev/null; then
    . $(brew --prefix)/etc/bash_completion
fi

eval "$(direnv hook bash)"

PS1="\w $ "
