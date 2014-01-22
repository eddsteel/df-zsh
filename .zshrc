# The following lines were added by compinstall

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
autoload colors && colors
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
if [ -f ${HOME}/.common_profile ]; then
	. ${HOME}/.common_profile
fi

if [ -d ${HOME}/bin ]; then
	export PATH=${HOME}/bin:$PATH
fi

HOSTTITLE=${(%):-%n@%m}
TITLE=$HOSTTITLE

source "$HOME/.zshfunctions/functions"
if [ -n "$TMUX" ]; then
	source "$HOME/.zshfunctions/tmux"
fi
setopt autocd
setopt extendedglob
setopt promptsubst

gpg_init()



typeset -ga preexec_functions
typeset -ga precmd_functions
preexce_functions+=pexec
precmd_functions+=pcmd

# sudo last command
alias srsly='sudo $(fc -ln -1)'
# redo last command (k is up in vi-land, and I often hit k<CR> instead of <ESC>k<CR>)
alias k='$(fc -ln -1)'
alias la='ls -a --color=auto'
alias dsg='RACK_ENV=dev shotgun -d'
alias vlc='vlc -f'
alias cvlc='cvlc --extraintf http'
alias org='cd ~/.org'
alias ga='git add'
alias gap='git add -p'
alias gau='git add -u'
alias gaup='git add -up'
alias gd='git diff'
alias gdc='git diff --cached'
alias glg='git lg'
alias gm='git commit -m'
alias gam='git commit -am'
alias gma='git commit --amend --reuse-message=HEAD'
alias gp='git push'
alias gl='git pull'
alias glr='git pull --rebase'
alias gf='git fetch'
alias gs='git status'
alias gsr='find . -type d -name ".git" -print -exec git --git-dir="{}" --work-tree="{}/.." status \;'
alias gb='git branch'
alias gc='git checkout'
alias gr='git rm'
alias gra='git remote add'
alias grr='git remote remove'
alias gcl='git clone'
alias glgh='git lgh'
alias tmux='tmux -2'
alias scala='settitle scala; scala'
alias sgrep='grep -n -r --include=*.scala'
alias stree='tree --prune -P *.scala'

alias -g L="| less"
alias -g G="| grep"

export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R '
export BROWSER="/usr/bin/chromium"
export SHELL="/bin/zsh"

alias twitterinfo="http-console http://displb.hootsuite.com:9998/info/twitter"
alias vup="vagrant up"

alias ec="emacsclient --no-wait"

# Platform specific
case $(uname) in
	Darwin)
		# Use brew's path first, add npm's last
		export PATH=/usr/local/bin:/usr/local/sbin:$PATH:/usr/local/share/npm/bin
		export BROWSER="open"
		;;
esac

export HISTIGNORE="fg*"
export HOMEBREW_BUILD_FROM_SOURCE=1

if [ -f $HOME/.workrc ]; then
	. $HOME/.workrc
fi

#
#PS1='%(?..%B%F{red}☹%f%b)%B%n%b%F{gray}%m%f%F{blue}%#%f '
PS1='%* %(?..%B%F{196}☹%f%b)%B%n%b%F{241}%m%f%F{033}%#%f '
RPS1='%F{118}%~%f%F{197}$(git_branch_modified)$(git_branch)%f'
