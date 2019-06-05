# pure (https://github.com/sindresorhus/pure)
autoload -U promptinit; promptinit
PURE_PROMPT_SYMBOL='$'
prompt pure

# color
autoload -Uz colors
colors

# completion
autoload -Uz compinit
compinit
## zsh-completions (from Homebrew)
fpath=(/usr/local/share/zsh-completions $fpath)

# zstyle
zstyle ':completion:*:default' menu select=1

# hisotry
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt share_history
setopt extended_history
setopt hist_ignore_dups

# other
eval "$(ndenv init -)"
eval "$(rbenv init - zsh)"
eval "$(direnv hook zsh)"

# function
## create gitignore
function gi() { curl -sLw "\n" https://www.gitignore.io/api/$@ ;}
## history with peco 
function select-history() { BUFFER=`history -n 1 | tail -r | peco`; CURSOR=$#BUFFER; zle reset-prompt; }
zle -N select-history
bindkey '^R' select-history

# alias
alias ll='ls -l'
alias la='ls -la'
alias ts='tig status'
alias gco='git checkout'
alias gce='git commit --allow-empty -m "initial commit"'
alias vi='vim -u NONE --noplugin'
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'