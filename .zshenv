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
