#!/bin/sh

# Profile file. Runs on login.

export EDITOR="vim"
export TERMINAL="st"
export READER="okular"
export BROWSER="firefox-developer-edition"

[ -f ~/.bashrc ] && source ~/.bashrc

# se o tty for 1 inicia o server grafico
if [ "$(tty)" = "/dev/tty1" ]; then
	pgrep -x i3 || exec startx
fi

setxkbmap br

# troca esc com capslock e usa as cores do 'wal'
sudo -n loadkeys ~/.resources/ttymaps.kmap 2>/dev/null
tty | grep tty >/dev/null && wal -i ~/.config/wall.png
