# Setup on macOS

1. prepare `.ssh`
2. install `Xcode` from [Developer Site](https://developer.apple.com/download/more/?=xcode)
3. run command for Xcode CommandLine Tools
```
sudo xcode-select --switch /Applications/Xcode.app
sudo xcodebuild -license
sudo xcode-select --install
```

4. `sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/setup_macos.sh)";`

5. `sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/setup_git.sh)";`