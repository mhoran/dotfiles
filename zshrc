case $TERM in (xterm*|rxvt)
  precmd () { print -Pn "\033]2;%m: %~\007" }
  preexec () { print -Pn "\033]2;%m: $1\a" }
esac

PROMPT='[%{[0;31m%}%U%n@%m%u%{[0m%}] %~%# '
PS2='[%_] %# '
HISTFILE=~/.zsh_history
SAVEHIST=1000
HISTSIZE=1000
READNULLCMD=less
EDITOR=vim
VISUAL=vim
LESS=eRCM
PAGER=less

export EDITOR VISUAL LESS PAGER

autoload -U compinit && compinit

setopt INC_APPEND_HISTORY
setopt AUTO_CD
setopt AUTO_LIST
setopt CORRECT
setopt EXTENDED_GLOB
setopt HIST_IGNORE_DUPS

bindkey -e

LS_COLORS="di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32"
LSCOLORS="ExGxFxDxCxDxDxhbhdacEc"

# Do we need Linux or BSD Style?
if ls --color -d . &>/dev/null 2>&1
then
  # Linux Style
  export LS_COLORS=$LS_COLORS
else
  # BSD Style
  export LSCOLORS=$LSCOLORS
fi

# Use same colors for autocompletion
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

if [ -f $HOME/.zshrc.local ]; then
  source $HOME/.zshrc.local
fi
