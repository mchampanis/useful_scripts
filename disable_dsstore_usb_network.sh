#!/bin/bash

set -e

if [ "$1" == "undo" ]; then
  echo "Enabling .DS_Store file creation on network shares and removable drives..."
  defaults write com.apple.desktopservices DSDontWriteNetworkStores false
  defaults write com.apple.desktopservices DSDontWriteUSBStores -bool false
else
  echo "Disabling .DS_Store file creation on network shares and removable drives..."
  defaults write com.apple.desktopservices DSDontWriteNetworkStores true
  defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
fi

echo "Done."
