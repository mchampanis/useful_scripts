#!/bin/bash

set -e

if [ "$1" == "undo" ]; then
  echo "Undoing speedy Dock..."
  # defaults delete com.apple.dock autohide-time-modifier
  defaults delete com.apple.dock autohide-delay
  killall Dock
else
  echo "Making the Dock faster..."
  # defaults write com.apple.dock autohide-time-modifier -int 0.25 # this is very aggressive
  defaults write com.apple.dock autohide-delay -float 0
  killall Dock
fi

echo "Done."
