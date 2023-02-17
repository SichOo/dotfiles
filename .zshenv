#!/usr/bin/env zsh

export LIBGL_ALWAYS_SOFTWARE=1
export LIBVA_DRIVER_NAME=i965

export LANGUAGE="en_US.UTF-8"
export LANG="$LANGUAGE"
export LC_ALL="$LANGUAGE"
export LC_CTYPE="$LANGUAGE"

export TMP=${TMP:-${TMPDIR:-/tmp}}
export TMPDIR=$TMP

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_MBIN_HOME="$HOME/.local/mbin"
export LOCAL_OPT="$HOME/.local/opt"

export BACKUP_DIR="$HOME/Backups"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZRCDIR="$XDG_CONFIG_HOME/zsh.d"
export ZDATADIR="$XDG_DATA_HOME/zsh"
export ZCACHEDIR="$XDG_CACHE_HOME/zsh"

export BC_ENV_ARGS="-q"

export TERMINAL="alacritty"
export BROWSER="librewolf"
export BROWSERCLI="w3m"
export SR_BROWSER="$BROWSERCLI"
export RTV_BROWSER="$BROWSERCLI"

if [[ -n "$NVIM_LISTEN_ADDRESS" ]]; then
    export VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
    export EDITOR="nvr -cc split --remote-wait +'set bufhidden=wipe'"
else
    export VISUAL="nvim"
    export EDITOR="nvim"
fi

export GIT_EDITOR="${EDITOR}"
export RTV_EDITOR="${EDITOR}"
export RGV_EDITOR="${EDITOR} $file +$line"
export SYSTEMD_COLORS=1

export PAGER="${commands[less]:-$PAGER}"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANPAGER="nvim -c 'set ft=man' -"
export MANPAGER="sh -c 'sed -e s/.\\\\x08//g | bat -l man -p'"

#export PERLDOC_PAGER="sh -c 'col -bx | bat -l man -p --theme=kimbro'"
#export PERLDOC_SRC_PAGER="sh -c 'col -bx | bat -l man -p --theme=kimbro'"
export PERLTIDY="${XDG_CONFIG_HOME}/perltidy/perltidyrc"
export BAT_CONFIG_PATH="${XDG_CONFIG_HOME}/bat/config"

# export CCACHE_CONFIGPATH="${XDG_CONFIG_HOME}/ccache/ccache.config"
export CCACHE_DIR="${XDG_CACHE_HOME}/ccache"
# export CCACHE_COMPRESS=1
# export CCACHE_SLOPPINESS=time_macros,file_macro
# export CCACHE_BASEDIR="$TRAVIS_BUILD_DIR"
# export CCACHE_CPP2=1

export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc"
export GTK3_RC_FILES="${XDG_CONFIG_HOME}/gtk-3.0/gtkrc"
export GTK_USE_PORTAL=1
export GTK_THEME_VARIANT=dark
export QT_QPA_PLATFORMTHEME=qt5ct
# export QT_QPA_PLATFORMTHEME=gtk2
# export QT_STYLE_OVERRIDE=kvantum
export LESSHISTFILE=/dev/null

export TIMEWARRIORDB="${XDG_DATA_HOME}/timewarrior/tw.db"
export TASKRC="${XDG_CONFIG_HOME}/task/taskrc"
export TASKDATA="${XDG_CONFIG_HOME}/task"
export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME}/ripgrep/ripgreprc"
export WGETRC="${XDG_CONFIG_HOME}/wget/wgetrc"
export TIGRC_USER="${XDG_CONFIG_HOME}/tig/tigrc"

export CARGO_HOME="${XDG_DATA_HOME}/cargo"
export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"

export LUAROCKS_CONFIG="${XDG_CONFIG_HOME}/luarocks/config.lua"

export GOPATH="${XDG_DATA_HOME}/go"
export GOROOT="${XDG_DATA_HOME}/go"
export GOENV_ROOT="${XDG_DATA_HOME}/goenv"

export GNUPGHOME="${XDG_CONFIG_HOME}/gnupg"
export GPG_AGENT_INFO="${GNUPGHOME}/S.gpg-agent"

export NPM_CONFIG_CACHE="$XDG_CONFIG_HOME/npm"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NPM_PACKAGES="$XDG_DATA_HOME/npm-packages"
export NPM_CONFIG_PREFIX="$XDG_DATA_HOME/npm-globals"

export LESS="\
  --ignore-case \
  --line-numbers \
  --hilite-search \
  --LONG-PROMPT \
  --no-init \
  --quit-if-one-screen \
  --RAW-CONTROL-CHARS \
  --mouse \
  --wheel-lines=3 \
  --tabs 4 \
  --force \
  --prompt ?f%f:(stdin). ?lb%lb?L/%L.. [?eEOF:?pb%pb\%..]"
