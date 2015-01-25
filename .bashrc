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

if [ -r /usr/local/git/contrib/completion/git-completion.bash ]; then
  # terminal show branch name
  # source /usr/local/git/contrib/completion/.git-completion.bash
  GIT_PS1_SHOWDIRTYSTATE=true
  export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[33m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$'
else
  export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[33m\]\w\[\033[31m\]\[\033[00m\]\$'
fi
