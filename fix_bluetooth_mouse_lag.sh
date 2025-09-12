#!/bin/bash

set -e

if [ "$1" == "undo" ]; then
  echo "Undoing Bluetooth mouse lag fix..."
  sudo defaults delete /Library/Preferences/com.apple.airport.bt.plist bluetoothCoexMgmt
else
  echo "Applying Bluetooth mouse lag fix..."
  sudo defaults write /Library/Preferences/com.apple.airport.bt.plist bluetoothCoexMgmt Hybrid
fi

echo "Done."