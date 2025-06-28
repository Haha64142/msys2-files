alias godot='cd /c/users/mwood/documents/godot/'
alias gd=godot

alias bullet-hell='cd /c/users/mwood/documents/godot/Bullet\ Hell/code'
alias bh=bullet-hell

alias aseprite='cd /c/users/mwood/documents/aseprite'
alias as=aseprite

alias bash_aliases='nano -Y sh /c/msys64/etc/.bash_aliases'
alias aliases=bash_aliases
alias als=bash_aliases

alias admin='powershell.exe -Command "Start-Process C:\\msys64\\mingw64.exe -Verb RunAs"'

alias push='git push origin'
alias pull='git pull origin'

log() {
  if [[ "$1" == "-o" ]]; then
    shift
    git log --oneline "$@"
  else
    git log "$@"
  fi
}

alias clr=clear

alias ls='ls -F --color=auto'
alias la='ls -a'
