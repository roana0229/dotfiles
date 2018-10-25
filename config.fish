### alias
alias ts='tig status'
alias gco='git checkout'
alias gcm='git commit -m'
alias gce='git commit --allow-empty -m "initial commit"'
alias vi='vim -u NONE --noplugin'
alias g='cd (ghq root)/(ghq list | peco)'
alias gh='hub browse (ghq list | peco | cut -d "/" -f 2,3)'


### function
function gi
  curl -L -s https://www.gitignore.io/api/$argv
end

function bc
  bash -c $argv
end


### env
if contains 'vim' (brew list)
  set VIM_PATH (brew info vim | grep /usr/local/Cellar/vim/ | sed 's/ .*//')
  set PATH $VIM_PATH/bin $PATH
end
set JAVA_HOME (/usr/libexec/java_home -v 1.8)
set PATH $JAVA_HOME $PATH
set HOMEBREW_CASK_OPTS --appdir=/Applications
set ANDROID_HOME $HOME/Library/Android/sdk
set PATH $ANDROID_HOME/platform-tools $PATH
set PATH $ANDROID_HOME/tools $PATH
set PATH $HOME/.ndenv/bin $PATH
set PATH $HOME/.ndenv/shims $PATH
set PATH $HOME/.rbenv/shims $PATH


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

### for `ndenv init -`
function ndenv_init
  set ndenv_path (echo ~/.ndenv/shims | cat)
  echo -n "set -gx PATH $ndenv_path \$PATH"
  echo '
command ndenv rehash 2>/dev/null
function ndenv
  set command $argv[1]
  set -e argv[1]

  switch "$command"
  case rehash shell
    source (ndenv "sh-$command" $argv|psub)
  case "*"
    command ndenv "$command" $argv
  end
end'
end

### initialize
if not test -z (which rbenv)
  status --is-interactive; and source (rbenv init -|psub)
end
if not test -z (which ndenv)
  status --is-interactive; and source (ndenv_init|psub)
end
if not test -z (which direnv)
  eval (direnv hook fish)
end

if test -z "$TMUX"
  tmux a >/dev/null 2>&1 # tmux環境でなければアタッチ
  # if test -z "$TMUX"
  #   tmux new-session # アタッチできていなければ新しくtmuxのセッションを作成
  # end
end
