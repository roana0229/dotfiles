# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions
alias ll='ls -l'
alias la='ls -la'
alias vi='vim'

alias vibash='vim ~/.bashrc'
alias vibashp='vim ~/.bash_profile'
alias rebash='source ~/.bashrc'
alias rebashp='source ~/.bash_profile'

export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[33m\]\w\[\033[31m\]\[\033[00m\]\$'
