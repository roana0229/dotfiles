export PATH=/usr/local/bin:$PATH

# node.js
export PATH=$HOME/.nodebrew/current/bin:$PATH

# ruby
export PATH=$HOME/.rbenv/bin:$PATH
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

# java classpath
export CLASSPATH=./

# Andoid Studio
export PATH=$HOME/Library/Android/sdk/platform-tools:$PATH

# postgres
export PGDATA=/usr/local/var/postgres

# Heroku Toolbelt
export PATH=/usr/local/heroku/bin:$PATH

# go
export GOPATH=$HOME/_go
export GOROOT=/usr/local/go
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH

# The next line updates PATH for the Google Cloud SDK.
export PATH=/Applications/google-cloud-sdk/bin:$PATH

# tex
export PATH=/usr/texbin:$PATH

# goroovy,gradle
export PATH=/usr/local/Cellar/gradle/2.3/bin:$PATH
export PATH=/usr/local/Cellar/groovy/2.4.1/bin:$PATH
