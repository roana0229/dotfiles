### alias
alias ts='tig status'
alias gco='git checkout'
alias vi='vim -u NONE --noplugin'


### function
function gi
  curl -L -s https://www.gitignore.io/api/$argv
end


### env
set VIM_PATH (brew info vim74 | grep /usr/local/Cellar/vim74/ | sed 's/ .*//')
set PATH $VIM_PATH/bin $PATH
set JAVA_HOME (/usr/libexec/java_home)
set HOMEBREW_CASK_OPTS --appdir=/Applications
set ANDROID_HOME ~/Library/Android/sdk
set PATH $ANDROID_HOME/platform-tools $PATH
set PATH $HOME/.nodebrew/current/bin $PATH
set PATH ~/.rbenv/shims $PATH


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


### Initialize
status --is-interactive; and source (rbenv init -|psub)
eval (direnv hook fish)

if test -z "$TMUX"
  tmux a >/dev/null 2>&1 # tmux環境でなければアタッチ
  if test -z "$TMUX"
    tmux new-session # アタッチできていなければ新しくtmuxのセッションを作成
  end
end
