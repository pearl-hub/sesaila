# vim: ft=sh
alias e="eval $EDITOR"

if type -q eza
    alias ls="eza --icons=auto --group-directories-first --color=auto -h"
else
    alias ls="ls --color=auto --group-directories-first -h"
end
type -q zoxide && alias cd="z"
type -q bat && alias cat="bat"

function open
    xdg-open $argv &
end