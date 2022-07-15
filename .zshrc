export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# This is accidentally omitted on debian based operating systems
export PATH="$HOME/.local/bin:$PATH"

# -----------------------------------------------------------------------------
# Zsh and Oh-My-Zsh
# -----------------------------------------------------------------------------

export ZSH=$HOME/.oh-my-zsh

plugins=(colorize colored-man-pages docker-compose git history ssh-agent)
ZSH_THEME=juanghurtado
COMPLETION_WAITING_DOTS="true"

unsetopt beep

# -----------------------------------------------------------------------------
# Oh-My-Zsh plugins
# -----------------------------------------------------------------------------

zstyle :omz:plugins:ssh-agent lazy yes

# -----------------------------------------------------------------------------
# Programming Environments
# -----------------------------------------------------------------------------

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"

if command -v nodenv 1>/dev/null 2>&1; then
  eval "$(nodenv init -)"
fi

# -----------------------------------------------------------------------------
# Post Setup
# -----------------------------------------------------------------------------

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases

unalias gm

bindkey -e
# Ctrl + Backspace
bindkey '^H' backward-kill-word
# Ctrl + Arrows
bindkey ";5C" forward-word
bindkey ";5D" backward-word
