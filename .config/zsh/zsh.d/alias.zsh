unalias which-command
unalias run-help

alias nv="$EDITOR"

alias ls="exa -la --group-directories-first --no-filesize --git"
alias ld="exa -lD --group-directories-first --no-filesize --git"

alias rm="rm -rfv"
alias mv="mv -v"
alias cp="cp -rv"
alias mkdir="mkdir -pv"

# Dotfiles
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dotadd="dotfiles add"
alias dots="dotfiles status"
alias dotc="dotfiles commit -m"
alias dotps="dotfiles push"
alias dotpl="dotfiles pull"

alias c="clear"
alias q="exit"

alias e/zshenv="$EDITOR $ZDOTDIR/.zshenv"
alias e/zshrc="$EDITOR $ZDOTDIR/.zshrc"

alias "e/alias"="$EDITOR $ZDOTDIR/zsh.d/alias.zsh"
alias e/linked="$EDITOR $ZDOTDIR/zsh.d/linked.zsh"

alias e/bspwm="$EDITOR $HOME/.config/bspwm/bspwmrc"
alias e/sxhkd="$EDITOR $HOME/.config/sxhkd/sxhkdrc"
alias e/picom="$EDITOR $HOME/.config/picom/picom.conf"

alias e/alacritty="$EDITOR $HOME/.config/alacritty/alacritty.yml"
alias e/starship="$EDITOR $HOME/.config/starship.toml"
alias e/ncmpcpp="$EDITOR $HOME/.config/ncmpcpp/config"
alias e/mpd="$EDITOR $HOME/.config/mpd/mpd.conf"
alias e/gitconfig="$EDITOR $HOME/.config/git/config"
