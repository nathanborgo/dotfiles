# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Go paths
export GOPATH=$HOME/code/go
export GOBIN=$HOME/code/go/bin

# Postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# OpenSSL
export SSL_CERT_FILE=/usr/local/etc/openssl/cert.pem

# Editor
alias vim='/usr/local/bin/vim'
export EDITOR=/usr/local/bin/vim
export VISUAL=/usr/local/bin/vim

# Parkwhiz.com Docker
export PW_CODE_DIR=~/code/parkwhiz/parkwhiz.com

# Stops terminal from sharing history between tabs
unsetopt inc_append_history
unsetopt share_history

# Parkwhiz.com docker
alias start_pw='sh ~/code/parkwhiz/parkwhiz.com/scripts/start_local_container'

# Helpful aliases
alias be="bundle exec "
alias psqlnew="psql --host=db2.db.prod.parkwhiz.com --port=5432 --username=nborgo --dbname=parkwhiz_prod"
alias psqlgl1="psql --host=db1.db.internal.gl1.parkwhiz.com --port=5432 --username postgres --dbname=parkwhiz_prod"
alias psqlgl2="psql --host=db1.db.internal.gl2.parkwhiz.com --port=5432 --username postgres --dbname=parkwhiz_prod"
alias psqlgl3="psql --host=db1.db.internal.gl3.parkwhiz.com --port=5432 --username postgres --dbname=parkwhiz_prod"
alias psqlgl4="psql --host=db1.db.internal.gl4.parkwhiz.com --port=5432 --username postgres --dbname=parkwhiz_prod"
alias psqlgl5="psql --host=db1.db.internal.gl5.parkwhiz.com --port=5432 --username postgres --dbname=parkwhiz_prod"
alias psqlgl6="psql --host=db1.db.internal.gl6.parkwhiz.com --port=5432 --username postgres --dbname=parkwhiz_prod"
alias psqlgl7="psql --host=db1.db.internal.gl7.parkwhiz.com --port=5432 --username postgres --dbname=parkwhiz_prod"
alias psqlgl8="psql --host=db1.db.internal.gl8.parkwhiz.com --port=5432 --username postgres --dbname=parkwhiz_prod"
alias psqlgl9="psql --host=db1.db.internal.gl9.parkwhiz.com --port=5432 --username postgres --dbname=parkwhiz_prod"
alias psqllocal="psql -d pw_admin_development"
alias redisgl1="redis-cli -h redis1.elasticache.internal.gl1.parkwhiz.com -p 6379"
alias redisgl2="redis-cli -h redis1.elasticache.internal.gl2.parkwhiz.com -p 6379"
alias redisgl3="redis-cli -h redis1.elasticache.internal.gl3.parkwhiz.com -p 6379"
alias redisgl4="redis-cli -h redis1.elasticache.internal.gl4.parkwhiz.com -p 6379"

# Helpful functions
function de() {
  docker exec -it $1 bash
}
function deo() {
  docker exec -it $(docker ps -l -q) bash -c 'cd /var/domains/api.parkwhiz.com; exec "${SHELL:-sh}"'
}
function trash() {
  mv $1 ~/.Trash
}
function deploy() {
  ~/code/parkwhiz/deploy/deploy.rb release
}

#Other things that I don't know about.
export PATH="$PATH:$HOME/.rvm/bin"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
