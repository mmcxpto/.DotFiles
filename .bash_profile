#!/bin/sh

# Profile file. Runs on login.

export PATH="$(du $HOME/.resources/ | cut -f2 | tr '\n' ':')$PATH"
export EDITOR="vim"
export TERMINAL="st"
export READER="okular"
export BROWSER="chromium"
export FILE="nnn"
export SUDO_ASKPASS="$HOME/.resources/bin/dmenupass"

[ -f ~/.bashrc ] && source ~/.bashrc

# se o tty for 1 inicia o server grafico
if [ "$(tty)" = "/dev/tty1" ]; then
	pgrep -x dwm || exec startx
fi


# less/man colors
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"            ; a="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"            ; a="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"                   ; a="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"    ; a="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"                   ; a="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"            ; a="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"                   ; a="${a%_}"

# usa as cores do 'wal'
tty | grep tty >/dev/null && wal -i ~/.config/wall.png

# troca escape e caps se for tty
sudo -n loadkeys ~/.scripts/ttymaps.kmap 2>/dev/null
