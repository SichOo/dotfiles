#!/usr/bin/env zsh
unsetopt beep

HISTFILE="$XDG_CACHE_HOME/zsh/zhistory"
HISTSIZE=50000
SAVEHIST=10000

setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt hist_ignore_all_dups
setopt share_history

setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

setopt autocd
setopt multios
setopt prompt_subst

setopt automenu
setopt menu_complete
setopt always_to_end
setopt complete_in_word
setopt correct
setopt flow_control

setopt interactivecomments

autoload -U compaudit compinit
autoload -U colors

colors
compinit

zstyle ":completion:*" menu select
zstyle ":completion:*" verbose yes
zstyle ':completion::complete:*' gain-privileges 1

# Make sure the terminal is in application mode, which zle is active. Only then
# are the values from $terminfo valid.
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
    function zle-line-init() {
        echoti smkx
    }
    function zle-line-finish() {
        echoti rmkx
    }
    zle -N zle-line-init
    zle -N zle-line-finish
fi

# Set LS_COLORS.
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.config/dircolors && eval "$(dircolors -b ~/.config/dircolors)" || eval "$(dircolors -b)"
fi
# If the zsh/complist module is loaded, this style can be used to set color
# specifications.
if [ -z "$LS_COLORS" ]; then
    zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43:'
else
    zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
fi

# export PATH type array
typeset -U path PATH
path=(
    ~/.local/bin
    ~/.local/mbin
    ~/.local/share/npm-globals/bin
$path)
export PATH

# -- Sources
source $ZDOTDIR/themes/refined-v2.zsh
source $ZDOTDIR/plugins/plugins.zsh
source $XDG_CONFIG_HOME/shell/aliases
for ZSH_FILE in "${ZDOTDIR:-$HOME}"/zsh.d/*.zsh(N); do
    source "${ZSH_FILE}"
done

if [ -d $ZDOTDIR/.zcompdump ]; then
    export FPATH="$ZDOTDIR/.zcompdump:$FPATH"
fi
