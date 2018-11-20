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

# usa as cores do 'wal'
tty | grep tty >/dev/null && wal -i ~/.config/wall.png
