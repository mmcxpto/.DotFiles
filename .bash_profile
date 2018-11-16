#  _               _
# | |__   __ _ ___| |__  _ __ ___
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__
# |_.__/ \__,_|___/_| |_|_|  \___|

stty -ixon # Disable ctrl-s and ctrl-q.  / disabilita ctrl-s e ctrl-q

HISTSIZE= HISTFILESIZE= # Infinite history.  /  historico infinito

export GPG_TTY=$(tty)

# System Maintainence / manutenÃ§Ã£o do sistema
alias sdn="sudo shutdown now"
alias psref="gpg-connect-agent RELOADAGENT /bye" # Refresh gpg

# Some aliases / alguns aliases
alias p="sudo pacman"
alias a="aurman"
alias SS="sudo systemctl"
alias v="vim"
alias sv="sudo vim"
alias r="ranger"
alias sr="sudo ranger"
alias ka="killall"
alias g="git"
alias mkd="mkdir -pv"

# Adding color / inserindo cores
alias ls='ls -hN --color=auto --group-directories-first'
alias grep="grep --color=auto" # Color grep - highlight desired sequence. / colore o a saida de texto do grep
alias ccat="highlight --out-format=ansi" # Color cat - print file with syntax highlighting. / colore a syntax do texto

# Internet
alias yt="youtube-dl --add-metadata -ic" # Download video link / baixa o video do youtube
alias yta="yt -x -f bestaudio/best" # Download only audio / baixa apenas o audio do video do youtube
alias YT="youtube-viewer"
alias ethspeed="speedometer -r enp0s25"
alias wifispeed="speedometer -r wlp3s0"

# TeX
alias Txa="cp ~/Documents/LaTeX/article.tex"
alias Txs="cp ~/Documents/LaTeX/beamer.tex"
alias Txh="cp ~/Documents/LaTeX/handout.tex"

shdl() { curl -O $(curl -s http://sci-hub.tw/"$@" | grep location.href | grep -o http.*pdf) ;}
