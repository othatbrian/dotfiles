export PS1="`uname -n`$ "

set -o vi

alias ls="ls -F"

function cd() {
  [ "$1" == "" ] && builtin cd || builtin cd "$1"
  ls
}
