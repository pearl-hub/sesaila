# vim: ft=sh
alias e="eval $EDITOR"

# If the system has htop use it!
[ -e /usr/bin/htop ]; and alias top="/usr/bin/htop"
# If the system has bpytop even better!
[ -e /usr/bin/bpytop ]; and alias top="/usr/bin/bpytop"

# Only the newer version of ls supports the option --group-directories-first
ls --group-directories-first > /dev/null ^ /dev/null
if [ $status -eq 0 ]
    alias l="ls --group-directories-first --color=auto -h"
else
    alias l="ls --color=auto -h"
end
