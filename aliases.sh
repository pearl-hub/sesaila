#@@@@@@@@@@@@@@@@@@
#@@ Aliases
#@@@@@@@@@@@@@@@@@@

alias ~="cd $HOME"
alias e="$EDITOR"

if command -v eza > /dev/null 2>&1; then
    alias ls="eza --icons=auto --group-directories-first --color=auto -h"
else
    alias ls="ls --color=auto --group-directories-first -h"
fi
command -v zoxide > /dev/null 2>&1 && alias cd="z"
command -v bat > /dev/null 2>&1 && alias cat="bat"

open() (
  xdg-open "$@" &
)
