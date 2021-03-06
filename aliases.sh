#@@@@@@@@@@@@@@@@@@
#@@ Aliases
#@@@@@@@@@@@@@@@@@@

alias ~="cd $HOME"
alias e="$EDITOR"

# If the system has htop use it!
[ -e /usr/bin/htop ] && alias top="/usr/bin/htop"
# If the system has bpytop even better!
[ -e /usr/bin/bpytop ] && alias top="/usr/bin/bpytop"

# Only the newer version of ls support the option --group-directories-first
if ls --group-directories-first --color=auto &> /dev/null
then
    alias l="ls --group-directories-first --color=auto -h"
else
    alias l="ls -h"
fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
