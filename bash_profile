hostname=`uname -n | cut -d. -f1`
if [ $UID == 0 ]; then
  export PS1="${hostname}# "
else
  export PS1="${hostname}$ "
fi

set -o vi

alias ls="ls -F"

function cd() {
  [ "$1" == "" ] && builtin cd || builtin cd "$1"
  ls
}
