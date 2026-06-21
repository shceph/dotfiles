#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
. "$HOME/.cargo/env"

if uwsm check may-start; then
	exec uwsm start hyprland.desktop
fi
