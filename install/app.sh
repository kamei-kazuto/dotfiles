# Install Brew Cask
echo "Installing brew cask..."
brew install caskroom/cask/brew-cask

# Apps
# GifCapture: https://github.com/onmyway133/GifCapture
apps=(
  google-chrome
  firefox
  visual-studio-code
  gifcapture
)

# Install apps to /Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# Apps
tools=(
  lsd
  gawk
  cmake
  tmux
  nvim
  peco
  translate-shell
  minikube
  telnet
)

# Install apps to /Applications
echo "installing　tools ..."
brew install ${tools[@]}

# Git install
brew install git; brew link --overwrite git