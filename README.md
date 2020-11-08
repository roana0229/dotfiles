# Setup on macOS

1. prepare `.ssh`
2. install `Xcode` from [Developer Site](https://developer.apple.com/download/more/?=xcode)
3. run command for Xcode CommandLine Tools
```
sudo xcode-select --switch /Applications/Xcode.app
sudo xcodebuild -license
sudo xcode-select --install
```

4. run command for [Homebrew](https://brew.sh/index_ja)
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew doctor
```

5. `sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/setup_macos.sh)";`

6. `sh -c "$(curl -fsSL https://raw.githubusercontent.com/roana0229/dotfiles/master/setup_git.sh)";`
