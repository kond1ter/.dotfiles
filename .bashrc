# ~/.bashrc

mount() {
	sudo mount /dev/$1 /mnt
}

net-connect() {
	nmcli d wifi connect $1 password $2
}

pacman-install() {
	lib=$(pacman -Slq | fzf --color=bw --reverse --no-scrollbar --preview 'pacman -Si {}' --layout=reverse)
	if [[ "$lib" != "" ]]; then sudo pacman -S $lib; fi
}

nmcli-connect() {
	ssid=$(nmcli d wifi list | fzf --reverse --color bw | head -n1 | awk '{print $1;}')
	echo "Password: "
	read pass
	nmcli d wifi connect $ssid password $pass
}

javar() {
	pname=$1
	ppath=$(pwd | awk -F "$pname" '{print $1}')
	for i in $ppath$pname/src/*.java; do javac -d . "$i"; done && java Main
}

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias java-run="for i in ../src/*.java; do javac -d . "$i"; done && java Main"
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export LANG=en_US.UTF-8

# Default open in NVIM from RANGER
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export VISUAL=nvim
export EDITOR=nvim
export HIGHLIGHT_STYLE=xoria256

# Custom aliases
alias clr='clear'
alias r='ranger'
alias sr='sudo ranger'
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
alias clock='tty-clock -C 7 -s -c'
alias pacman-list="pacman -Qq | fzf --color=bw --reverse --no-scrollbar --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias pacman-search="pacman -Slq | fzf --color=bw --reverse --no-scrollbar --preview 'pacman -Si {}' --layout=reverse"
alias weather="curl -4 wttr.in/Moscow"
alias net-restart="sudo systemctl restart NetworkManager"
alias net-off="sudo systemctl stop NetworkManager"
alias net-on="sudo systemctl start NetworkManager"
alias net-list="nmcli d wifi list"
alias net-d="nmcli d"
alias v="nvim"
alias sv="sudo nvim"
alias feh="feh --scale-down --draw-filename --draw-tinted -g 800x600"
export PS1='\[\e[7m\]\u@\w\[\e[0m\] \[\e[1m\]>\[\e[0m\] '

alias net="
echo '	net-on                       - start NetworkManager'
echo '	net-off                      - stop NetworkManager'
echo '	net-restart                  - restart NetworkManager'
echo '	net-list                     - list of available networks'
echo '	net-connect <SSID> <PASSWD>  - connect to network by SSID'
echo '	nmcli-conect                 - interface to connect network'
"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
