export PS1="\h\$ "

set -o vi

alias ls="ls -F --color=auto"

function cd() {
  [ "$1" == "" ] && builtin cd || builtin cd "$1"
  ls
}
