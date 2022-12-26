unalias which-command
unalias run-help

alias nv="$EDITOR"

alias ls="exa -la --group-directories-first --no-filesize --git"
alias ld="exa -lD --group-directories-first --no-filesize --git"

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

alias e/zshenv="$EDITOR $ZDOTDIR/.zshenv"
alias e/zshrc="$EDITOR $ZDOTDIR/.zshrc"

alias "e/alias"="$EDITOR $ZDOTDIR/zsh.d/alias.zsh"
alias e/linked="$EDITOR $ZDOTDIR/zsh.d/linked.zsh"

alias e/bspwm="$EDITOR $HOME/.config/bspwm/bspwmrc"
alias e/sxhkd="$EDITOR $HOME/.config/sxhkd/sxhkdrc"
