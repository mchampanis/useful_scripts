#!/bin/bash

set -e

if [ "$1" == "undo" ]; then
  echo "Undoing drag windows from any part of window..."
  defaults write -g NSWindowShouldDragOnGesture -bool false
else
  echo "Allowing windows to be dragged from any part of the window (Ctrl-Cmd + <drag>)..."
  defaults write -g NSWindowShouldDragOnGesture -bool true
fi

echo "Done."
