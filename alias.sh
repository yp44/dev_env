# git
alias gitdiff='git difftool -y'
alias gitco='git checkout'
alias gitst='git status'
alias gitl='git log'
alias gitaddm='git add $(git ls-files -m | fzf -m -e) && git status'


# find
alias find='echo "Please use fd instead of find :-)" && find'
alias hfd='fd  --no-ignore-vcs -H'

# history
alias hist='echo $(cat ~/.bash_history | fzf)'
alias histe='echo $(cat ~/.bash_history | fzf -e)'
