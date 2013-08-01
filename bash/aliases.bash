alias tmux="tmux -2"

# System
alias ..="cd .."
alias ls="ls -la"

# Flush DNS Cache
alias flushdns="dscacheutil -flushcache"

# Recursively delete .DS_Store files
# http://alex.tsd.net.au/2010/09/14/recursively-remove-ds_store-files/
alias cleanup="find . -name '*.DS_Store' -type f -delete"

# instant simple server
# https://gist.github.com/1525217
alias server="open http://localhost:8000 && python -m SimpleHTTPServer"

# Work
# SASS
alias sassy="sass --watch html/skin/smooth/scss/:html/skin/smooth/ --style :expanded"
alias otter="cd /var/www/dev/otter/"
alias ackless="ack --pager=\"less -R\""
alias restartall="sudo sudo /etc/init.d/httpd restart ; sudo /etc/init.d/varnish restart ; sudo /etc/init.d/memcached restart"


