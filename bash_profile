hostname=`uname -n | cut -d. -f1`
if [ $UID == 0 ]; then
  export PS1="`hostname -s`# "
else
  export PS1="`hostname -s`$ "
fi

set -o vi

alias ls="ls -F --color=auto"

function cd() {
  [ "$1" == "" ] && builtin cd || builtin cd "$1"
  ls
}
