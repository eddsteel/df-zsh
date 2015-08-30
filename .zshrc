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

if [ -f ${HOME}/.env ]; then
    . ${HOME}/.env
fi

HOSTTITLE=${(%):-%n@%m}
TITLE=$HOSTTITLE

source "$HOME/.zshfunctions/functions"
if [ -n "$TMUX" ]; then
        source "$HOME/.zshfunctions/tmux"
        set_tmux_title
fi
setopt autocd
setopt extendedglob
setopt promptsubst

if [ -f "${HOME}/.gpg-agent-info" ]; then
    . "${HOME}/.gpg-agent-info"
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
fi

GPG_TTY=$(tty)
export GPG_TTY

typeset -ga preexec_functions
typeset -ga precmd_functions
preexce_functions+=pexec
precmd_functions+=pcmd

source ~/.shellalias
alias -g L="| less"
alias -g G="| grep"

export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R '
export BROWSER="/usr/bin/chromium"
export SHELL="/bin/zsh"

/usr/libexec/java_home 8

alias twitterinfo="http-console http://displb.hootsuite.com:9998/info/twitter"
alias ec="emacsclient --no-wait"

# Platform specific
case $(uname) in
        Darwin)
                # Use brew's path first, add npm's last
                export PATH=/usr/local/bin:/usr/local/sbin:$PATH:/usr/local/share/npm/bin
                export BROWSER="open"
                . `brew --prefix`/etc/profile.d/z.sh
                ;;
esac

if [ -d ~/.cabal/bin ]; then
    export PATH=~/.cabal/bin:$PATH
fi

export HISTIGNORE="fg*"
export HOMEBREW_BUILD_FROM_SOURCE=1

if [ -f $HOME/.workrc ]; then
        . $HOME/.workrc
fi

PS1='%F{241}%*%f %(?..%B%F{196}☹%f%b)%B%n%b%m%F{033}%#%f '
RPS1='%F{118}%~%f%F{197}$(git_branch_modified)$(git_branch)%f'

if [ -f ${HOME}/.profile ]; then
    source ${HOME}/.profile
fi

[ -d ~/Projects/oss/zsh-syntax-highlighting ] && source ~/Projects/oss/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


fortune
