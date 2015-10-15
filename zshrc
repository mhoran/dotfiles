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

if [ -f $HOME/.zshrc.local ]; then
  source $HOME/.zshrc.local
fi
