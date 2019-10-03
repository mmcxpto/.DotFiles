#!/bin/sh

# Profile file. Runs on login.

export PATH="$(du $HOME/.resources/ | cut -f2 | tr '\n' ':')$PATH"
export EDITOR="vim"
export TERMINAL="st"
export READER="okular"
export BROWSER="chromium"

[ -f ~/.bashrc ] && source ~/.bashrc

# se o tty for 1 inicia o server grafico
if [ "$(tty)" = "/dev/tty1" ]; then
	pgrep -x dwm || exec startx
fi

# usa as cores do 'wal'
tty | grep tty >/dev/null && wal -i ~/.config/wall.png

# troca escape e caps se for tty
sudo -n loadkeys ~/.scripts/ttymaps.kmap 2>/dev/null
