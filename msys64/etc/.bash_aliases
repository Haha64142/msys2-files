alias godot='cd /c/Users/pwood/Documents/Programs/Godot'
alias gd=godot

alias bullet-hell='cd /c/Users/pwood/Documents/Programs/Godot/Bullet\ Hell/code'
alias bh=bullet-hell

alias aseprite='cd /c/Users/pwood/Documents/Aseprite'
alias as=aseprite

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

alias bash_aliases='nano -Y sh /c/msys64/etc/.bash_aliases'
alias aliases=bash_aliases
alias als=aliases

MINGW64='C:\\msys64\\mingw64.exe'
admin='powershell.exe -Command "Start-Process $MINGW64" -Verb RunAs'


elevate() {
	ppid=$(ps -p $$ | awk 'NR==2 { print $2 }')
  winpid=$(ps -p $ppid | awk 'NR==2 {print $4 }')
	cmdline=$(powershell.exe -NoProfile -Command "(Get-CimInstance Win32_Process -Filter 'ProcessId = ${winpid}').CommandLine")
	path=$(echo "$cmdline" | grep -o -E "AppLaunchCmd=('[^']+'|\"[^\"]+\"|[^ ]+)" | sed -E "s/^AppLaunchCmd=['\"]?([^'\"]+)['\"]?$/\1/")

  echo $path
  if [[ -f "$path" ]]; then
    powershell.exe -Command "Start-Process '$path' -Verb RunAs"
  else
    echo "Failed to determine launcher: \"$path\""
  fi
}


alias ls='ls -F --color=auto'
alias grep='grep --color=auto'

alias tree='tree -aC'

alias clr=clear
alias la='ls -a'
