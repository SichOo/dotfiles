setopt no_global_rcs
skip_global_compinit=1

export DO_NOT_TRACK=1
export HINT_TELEMETRY="off"
export NEXT_TELEMETRY_DISABLED=1

export LANGUAGE="en_US.UTF-8"
export LANG="$LANGUAGE"
export LC_ALL="$LANGUAGE"
export LC_CTYPE="$LANGUAGE"

export TMP=${TMP:-${TMPDIR:-/tmp}}
export TMPDIR=$TMP

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

typeset -U path PATH
path=(
	$HOME/.local/bin 
	$path
)
export PATH

export SHELL="/usr/bin/zsh"
export EDITOR="/usr/local/bin/nvim"
export VISUAL="$EDITOR"
export BROWSER="/usr/bin/firefox"

export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc"
export GTK_USE_PORTAL=1
export GTK_THEME_VARIANT=dark
export QT_QPA_PLATFORMTHEME=qt5ct

export NPM_CONFIG_CACHE="${XDG_CACHE_HOME}/npm"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"
export NPM_PACKAGES="${XDG_DATA_HOME}/npm-packages"
export NPM_CONFIG_PREFIX="${XDG_DATA_HOME}/npm-globals"
