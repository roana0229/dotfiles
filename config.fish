### alias
alias ts='tig status'
alias gco='git checkout'
alias gcm='git commit -m'
alias gce='git commit --allow-empty -m "initial commit"'
alias vi='vim -u NONE --noplugin'


### function
function gi
  curl -L -s https://www.gitignore.io/api/$argv
end


### env
if contains 'vim' (brew list)
  set VIM_PATH (brew info vim | grep /usr/local/Cellar/vim/ | sed 's/ .*//')
  set PATH $VIM_PATH/bin $PATH
end
set JAVA_HOME (/usr/libexec/java_home)
set HOMEBREW_CASK_OPTS --appdir=/Applications
set ANDROID_HOME ~/Library/Android/sdk
set GOPATH $HOME
set PATH $ANDROID_HOME/platform-tools $PATH
set PATH $HOME/.nodebrew/current/bin $PATH
set PATH ~/.rbenv/shims $PATH
set PATH $GOPATH/bin $PATH


### prompt format
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red
set __fish_git_prompt_char_dirtystate '*'
set __fish_git_prompt_char_stagedstate '#'
set __fish_git_prompt_char_untrackedfiles '+'
set __fish_git_prompt_char_stashstate '@'

function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s$ ' (__fish_git_prompt)

  set_color normal
end

function fish_right_prompt
  printf ''
end


### initialize
if not test -z (which rbenv)
  status --is-interactive; and source (rbenv init -|psub)
end
if not test -z (which direnv)
  eval (direnv hook fish)
end

if test -z "$TMUX"
  tmux a >/dev/null 2>&1 # tmux環境でなければアタッチ
  if test -z "$TMUX"
    tmux new-session # アタッチできていなければ新しくtmuxのセッションを作成
  end
end
