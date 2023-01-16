autoload -Uz compinit
compinit

eval "$(starship init zsh)"

HISTFILE="${XDG_CACHE_HOME}/zsh/zhistory"
HISTSIZE=100000
SAVEHIST=100000

setopt extended_history
setopt inc_append_history
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_find_no_dups
setopt hist_ignore_space
setopt hist_save_no_dups
setopt hist_verify
setopt append_history
setopt hist_no_store

setopt autocd
setopt nobeep
setopt correct

zstyle ":completion:*" menu select
zstyle ":completion:complete:*" gain-privileges 1


ncmpcppShow() {
  BUFFER="ncmpcpp"
  zle accept-line
}
zle -N ncmpcppShow
bindkey '^[\' ncmpcppShow

. $ZDOTDIR/plugins/plugins.zsh
. $ZDOTDIR/extensions/fzf.zsh
for ZSH_FILE in "${ZDOTDIR:-$HOME}"/zsh.d/*.zsh(N); do
	source "${ZSH_FILE}"
done
