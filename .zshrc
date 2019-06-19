# pure (https://github.com/sindresorhus/pure)
autoload -U promptinit; promptinit
PURE_PROMPT_SYMBOL='$'
prompt pure

# color
autoload -Uz colors
colors

# zstyle
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
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
typeset -U PATH

# completion
## zsh-completions (from Homebrew)
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit
compinit

# customizes

## function
### create gitignore
function gi() { curl -sLw "\n" https://www.gitignore.io/api/$@ ;}
### history with peco 
function select_history() { BUFFER=`history -n 1 | tail -r | peco`; CURSOR=$#BUFFER; zle reset-prompt; }
zle -N select_history
bindkey '^R' select_history
### exec fastlane
function exec_fastlane() { if [[ -f fastlane/Fastfile ]] then bundle exec fastlane $(cat fastlane/Fastfile | grep ' lane :' | cut -d' ' -f4 | tr -d ':' | peco); zle reset-prompt; fi }
zle -N exec_fastlane
bindkey '^F' exec_fastlane


## alias
alias ll='ls -l'
alias la='ls -la'
alias ts='tig status'
alias gco='git checkout'
alias gce='git commit --allow-empty -m "initial commit"'
alias vi='vim -u NONE --noplugin'
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
alias gpush='git push origin $(git symbolic-ref --short HEAD)'
alias gpull='git pull origin $(git symbolic-ref --short HEAD)'
