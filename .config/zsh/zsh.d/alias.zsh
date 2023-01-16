# -- Disabled alias
unalias which-command
unalias run-help
unalias fsh-alias

alias c="clear"
alias q="exit"

# -- Editor
alias nv="$EDITOR"

# -- LS using EXA
alias la="exa -la --group-directories-first $LS_OPTIONS --git --no-filesize --no-time"
alias ls="exa -lD --group-directories-first $LS_OPTIONS --git --no-filesize --no-time"
alias lsD="exa -laD --group-directories-first $LS_OPTIONS --git --no-filesize --no-time"

# -- Tree using EXA
alias tree1="exa --tree --level=1 --group-directories-first $LS_OPTIONS --git"
alias tree2="exa --tree --level=2 --group-directories-first $LS_OPTIONS --git"
alias tree3="exa --tree --level=3 --group-directories-first $LS_OPTIONS --git"

alias cp="cp -i"

# -- Dotfiles
alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dotadd="dot add"
alias dots="dot status"
alias dotc="dot commit -m"
alias dotps="dot push"
alias dotpl="dot pull"
alias s/token="bat $HOME/.config/git/token"

# -- ZSH
alias e/zshenv="$EDITOR $ZDOTDIR/.zshenv"
alias e/zshrc="$EDITOR $ZDOTDIR/.zshrc"
# -- ZSH - Configurations
alias "e/alias"="$EDITOR $ZDOTDIR/zsh.d/alias.zsh"
alias e/linked="$EDITOR $ZDOTDIR/zsh.d/linked.zsh"
alias e/addpath="$EDITOR $ZDOTDIR/zsh.d/addpath.zsh"

# -- Bspwm & Sxhkd
alias e/bspwm="$EDITOR $HOME/.config/bspwm/bspwmrc"
alias e/sxhkd="$EDITOR $HOME/.config/sxhkd/sxhkdrc"
alias e/picom="$EDITOR $HOME/.config/picom/picom.conf"

# -- User Alias
alias e/alacritty="$EDITOR $HOME/.config/alacritty/alacritty.yml"
alias e/starship="$EDITOR $HOME/.config/starship.toml"
alias e/ncmpcpp="$EDITOR $HOME/.config/ncmpcpp/config"
alias e/mpd="$EDITOR $HOME/.config/mpd/mpd.conf"
alias e/gitconfig="$EDITOR $HOME/.config/git/config"
