if [[ -r /usr/share/doc/pkgfile/command-not-found.zsh ]]; then
    source /usr/share/doc/pkgfile/command-not-found.zsh
    export PKGFILE_PROMPT_INSTALL_MISSING=1
fi

# autopair
if [[ ! -d $HOME/.config/zsh/plugins/zsh-autopair ]]; then
  git clone https://github.com/hlissner/zsh-autopair $HOME/.config/zsh/plugins/zsh-autopair
fi

# zsh-history-substring-search
if [[ ! -d $HOME/.config/zsh/plugins/zsh-history-substring-search ]]; then
  git clone https://github.com/zsh-users/zsh-history-substring-search.git $HOME/.config/zsh/plugins/zsh-history-substring-search
fi


. $ZDOTDIR/plugins/zsh-autopair/autopair.zsh
autopair-init

. $ZDOTDIR/plugins/F-Sy-H/F-Sy-H.plugin.zsh
. $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
. $ZDOTDIR/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
