if [ $UID == 0 ]; then
  export PS1="`uname -n`# "
else
  export PS1="`uname -n`$ "
fi

set -o vi

alias ls="ls -F"

function cd() {
  [ "$1" == "" ] && builtin cd || builtin cd "$1"
  ls
}
