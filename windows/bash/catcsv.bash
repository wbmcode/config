cat $1 | sed 's/,,/,[:space:],/g' | column -s, -tx | less -N -S