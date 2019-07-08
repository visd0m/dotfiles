# finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# save screenshots to the desktop
defaults write com.apple.screencapture location -string “$HOME/Desktop”

# save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string “png”

# display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# disable the sound effects on boot
sudo nvram SystemAudioVolume=” “
