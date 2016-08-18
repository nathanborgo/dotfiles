# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Go paths
export GOPATH=$HOME/code/go
export GOROOT=/usr/local/opt/go/libexec
export GOBIN=$HOME/code/go/bin
export GO15VENDOREXPERIMENT=1

# Postgress.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# OpenSSL
export SSL_CERT_FILE=/usr/local/etc/openssl/cert.pem

# Editor
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# Parkwhiz.com Docker
export PW_CODE_DIR=~/code/parkwhiz/parkwhiz.com

# Stops terminal from sharing history between tabs
unsetopt inc_append_history
unsetopt share_history

# Parkwhiz.com docker
alias start_pw='docker run -d -v /tmp:/tmp -v $PW_CODE_DIR:/var/domains/api.parkwhiz.com -v /etc/hosts:/etc/hosts -v $PW_CODE_DIR/nginx:/etc/nginx/sites-enabled/ -v $PW_CODE_DIR/logs:/var/domains/logs -t -p 80:80 -p 8080:8080 -i parkwhiz/php-app:1.0.4 /opt/bin/start_all'

# Helpful functions
function de() {
  docker exec -it $1 bash
}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting