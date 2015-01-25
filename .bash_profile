# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

HISTSIZE=5000
HISTFILESIZE=5000
HISTIGNORE=history
HISTCONTROL=ignoreboth


# mysql
export PATH=$PATH:/usr/local/mysql/bin

# node.js
export PATH=$PATH:$HOME/.nodebrew/current/bin
export NODE_PATH=$HOME/.nodebrew/current/lib/node_modules

# ruby
export PATH=$PATH:$HOME/.rbenv/bin
eval "$(rbenv init -)"

# python
export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/2.7/bin

# java classpath
export CLASSPATH=./
export CLASSPATH=$CLASSPATH:/usr/local/org.json.jar
export CLASSPATH=$CLASSPATH:/usr/local/servlet-api.jar
export CLASSPATH=$CLASSPATH:/usr/local/jsp-api.jar
# twitter4j
export CLASSPATH=$CLASSPATH:/usr/local/twitter4j/lib/twitter4j-core-4.0.2.jar
export CLASSPATH=$CLASSPATH:/usr/local/twitter4j/lib/twitter4j-stream-4.0.2.jar
# jdbc
export CLASSPATH=$CLASSPATH:/usr/share/java/postgresql-9.3-1102.jdbc4.jar

# lego
export NXJ_HOME=/Users/kaoru/Documents/college/lego/leJOS_NXJ_HOME
export LEJOS_NXT_JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
export DYLD_LIBRARY_PATH=$NXJ_HOME/bin
export PATH=$PATH:$JAVA_HOME/bin:$NXJ_HOME/bin

# postgreSQL
export PGDATA=/usr/local/var/postgres
