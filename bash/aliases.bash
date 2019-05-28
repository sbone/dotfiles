alias tmux="tmux -2"

# System
alias ..="cd .."
alias ls="ls -lah"
alias be="bundle exec"

# Flush DNS Cache
alias flushdns="dscacheutil -flushcache"

# Recursively delete .DS_Store files
# http://alex.tsd.net.au/2010/09/14/recursively-remove-ds_store-files/
alias cleanup="find . -name '*.DS_Store' -type f -delete"

# instant simple server
# https://gist.github.com/1525217
alias server="python -m SimpleHTTPServer && open http://localhost:8000"

# git grep
alias gg="git grep"

# kill process(es) on certain port
killPortProcess() {
  kill `lsof -t -i:$1`
}
alias killport=killPortProcess

