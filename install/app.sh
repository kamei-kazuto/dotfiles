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
# FPP: https://github.com/facebook/PathPicker
tools=(
  lsd
  gawk
  ripgrep
  pandoc
  poppler
  tesseract
  ffmpeg
  fpp
  lazygit
  git-extras
)

# Install apps to /Applications
echo "installing　tools ..."
brew install ${tools[@]}