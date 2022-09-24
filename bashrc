
# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export LANG=en_US.UTF-8

# Default open in NVIM from RANGER
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  
export VISUAL=nvim;
export EDITOR=nvim;

# Powerline PS1
# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# . /usr/share/powerline/bindings/bash/powerline.sh

# Custom aliases
alias clr='clear'
alias r='ranger'
alias nv='nvim'
alias snv='sudo nvim'
alias loc='sudo updatedb && locate'
alias t='touch'
alias md='mkdir'
alias mp='ncmpcpp'
alias ll='ls -la'
alias autoremove='sudo pacman -Rcns $(pacman -Qdtq)'
alias hl="__GL_SYNC_TO_VBLANK=0 wine /home/konditer/files/'GoldSrc Package 2.4'/'Half-Life (WON).bat' --opengl"
alias winesteam="wine /home/konditer/.wine/drive_c/'Program Files (x86)'/Steam/steam.exe"
alias q='exit'
alias clock='tty-clock -C 6 -s -c'
alias pkgl="pacman -Qq | fzf --color=bw --reverse --border --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias pkgs="pacman -Slq | fzf --color=bw --reverse --border --preview 'pacman -Si {}' --layout=reverse"
alias note="nano .notes"
alias weather="curl -4 wttr.in/Moscow"


# Custom PS1
export PS1="┌\[$(tput bold)\]\[\033[38;5;14m\][\u\[$(tput sgr0)\] \[$(tput bold)\]\w\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;14m\]]\[$(tput sgr0)\]\n\[$(tput sgr0)\]└\[$(tput bold)\]\[\033[38;5;14m\]>\[$(tput sgr0)\] \[$(tput sgr0)\]"



















