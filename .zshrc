# pure (https://github.com/sindresorhus/pure)
autoload -U promptinit; promptinit
PURE_PROMPT_SYMBOL="$"
PURE_GIT_PULL=1
PURE_GIT_DELAY_DIRTY_CHECK=6
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
function exec_fastlane() {
  if [[ -f fastlane/Fastfile ]] then
    CMD=`cat fastlane/Fastfile | grep ' lane :' | cut -d' ' -f4 | tr -d ':' | peco`
    BUFFER="bundle exec fastlane $CMD"; CURSOR=$#BUFFER; zle reset-prompt;
  fi
}
zle -N exec_fastlane
bindkey '^F' exec_fastlane
### select git command
function select_git() {
  if [[ -d .git ]] then
    BRANCH=`git symbolic-ref --short HEAD`
    CMD_ARRAY=(
      "git pull origin $BRANCH"
      "git push origin $BRANCH"
      "git pull origin develop"
      "git checkout develop"
      "git checkout -b feature/"
      "git reset --soft HEAD^"
      "git checkout . && git clean -fd"
      "git commit --allow-empty -m 'initial commit'"
      )
    IFS=$'\n'; BUFFER=`echo "${CMD_ARRAY[*]}" | peco`; CURSOR=$#BUFFER; zle reset-prompt;
  fi
}
zle -N select_git
bindkey '^G' select_git
### select Xcode command
function select_xcode() {
  if [[ -n `ls | grep .xcodeproj` ]] then
    XCODEPROJ=`ls | grep .xcodeproj`
    XCWORKSPACE=`ls | grep .xcworkspace`
    CMD_ARRAY=(
      "open $XCWORKSPACE"
      "open $XCODEPROJ"
      "bundle exec synx $XCODEPROJ"
      "rm -rf ~/Library/Developer/Xcode/DerivedData/**"
      "rm -rf ~/Library/Developer/Xcode/Archives/**"
      )
    IFS=$'\n'; BUFFER=`echo "${CMD_ARRAY[*]}" | peco`; CURSOR=$#BUFFER; zle reset-prompt;
  fi
}
zle -N select_xcode
bindkey '^X' select_xcode

## alias
alias ll='ls -l'
alias la='ls -la'
alias ts='tig status'
alias vi='vim -u NONE --noplugin'
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
alias adbsc='adb shell screencap -p /sdcard/screen.png && adb pull /sdcard/screen.png ~/Desktop/`date +“%Y%m%d_%I%M%S”`.png && adb shell rm /sdcard/screen.png'
