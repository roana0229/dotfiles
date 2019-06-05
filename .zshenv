export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export ANDROID_HOME=$HOME/Library/Android/sdk
export HOMEBREW_CASK_OPTS='--appdir=/Applications'

path=(
  "/usr/local/bin"
  "/usr/local/sbin"
  $JAVA_HOME $PATH
  $ANDROID_HOME/emulator
  $ANDROID_HOME/tools
  $ANDROID_HOME/tools/bin
  $ANDROID_HOME/platform-tools
  $HOME/.ndenv/shims
  $HOME/.rbenv/shims
  $path
)