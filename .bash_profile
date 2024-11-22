#
# ~/.bash_profile
#

. .bashrc

# BSPWM
# [[ -f ~/.bashrc ]] && . ~/.bashrc
# [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

# GNOME
# if [[ -z $DISPLAY && $(tty) == /dev/tty1 && $XDG_SESSION_TYPE == tty ]]; then
#   MOZ_ENABLE_WAYLAND=1 QT_QPA_PLATFORM=wayland XDG_SESSION_TYPE=wayland exec dbus-run-session gnome-session
# fi

# Hyprland
[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && MOZ_ENABLE_WAYLAND=1 QT_QPA_PLATFORM=wayland XDG_SESSION_TYPE=wayland && Hyprland
