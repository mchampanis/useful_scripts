#!/bin/bash

# https://github.com/tombonez/noTunes
# `brew install --cask notunes`
# noTunes is a macOS application that will prevent iTunes or Apple Music from launching.
# You can configure it to open a different program when the Play media key is pressed.

set -e

if [ "$1" == "undo" ]; then
  echo "Disabling noTunes replacement app..."
  defaults delete digital.twisted.noTunes replacement
elif [ "$1" == "Tidal" ]; then
  echo "Setting noTunes default app to Tidal..."
  defaults write digital.twisted.noTunes replacement /Applications/Tidal.app
else
  echo "Setting noTunes default app to Spotify..."
  defaults write digital.twisted.noTunes replacement /Applications/Spotify.app
fi

echo "Done."
