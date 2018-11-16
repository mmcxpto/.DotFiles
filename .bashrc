export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox-developer-edition"
export READER="okular"

[ -f ~/.bashrc ] && source ~/.bashrc

# Start graphical server if i3 not already running. / inicia o server grafico ser for tty1
if [ "$(tty)" = "/dev/tty1" ]; then
	pgrep -x i3 || exec startx
fi

# Switch escape and caps and use wal colors if tty: / troca o caps pelo esc e usa as cores do wal(pywal)
sudo -n loadkeys ~/.scripts/ttymaps.kmap 2>/dev/null
tty | grep tty >/dev/null && wal -Rns

PS1='[\u@\h \W]\$ '
