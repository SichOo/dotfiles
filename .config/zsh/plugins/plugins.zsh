if [[ -r /usr/share/doc/pkgfile/command-not-found.zsh ]]; then
    source /usr/share/doc/pkgfile/command-not-found.zsh
    export PKGFILE_PROMPT_INSTALL_MISSING=1
fi

if [[ ! -d ${ZDOTDIR}/plugins/zsh-autopair ]]; then
  git clone https://github.com/hlissner/zsh-autopair ${ZDOTDIR}/plugins/zsh-autopair
fi

if [[ ! -d ${ZDOTDIR}/plugins/F-Sy-H ]]; then
  git clone https://github.com/z-shell/F-Sy-H ${ZDOTDIR}/plugins/F-Sy-H
fi

if [[ ! -d ${ZDOTDIR}/plugins/zsh-autosuggestions ]]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZDOTDIR}/plugins/zsh-autosuggestions
fi

if [[ ! -d ${ZDOTDIR}/plugins/zsh-history-substring-search ]]; then
  git clone https://github.com/zsh-users/zsh-history-substring-search.git ${ZDOTDIR}/plugins/zsh-history-substring-search
fi

if [[ ! -d ${ZDOTDIR}/plugins/zsh-z ]]; then
  git clone https://github.com/agkozak/zsh-z.git ${ZDOTDIR}/plugins/zsh-z
fi

. ${ZDOTDIR}/plugins/F-Sy-H/F-Sy-H.plugin.zsh
. ${ZDOTDIR}/plugins/zsh-autopair/autopair.zsh
autopair-init
. ${ZDOTDIR}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
. ${ZDOTDIR}/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
. ${ZDOTDIR}/plugins/zsh-z/zsh-z.plugin.zsh
