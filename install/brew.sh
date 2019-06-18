if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Apps
tools=(
  lsd
  gawk
)

# Install apps to /Applications
echo "installing　tools ..."
brew install ${tools[@]}