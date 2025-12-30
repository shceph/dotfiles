#
# ~/.bashrc
#

eval "$(starship init bash)"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export GTK_THEME=Adwaita:dark
export QT_SCALE_FACTOR=1.2

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/opt/cross/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
. "$HOME/.cargo/env"
