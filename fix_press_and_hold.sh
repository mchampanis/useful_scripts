KEY='ApplePressAndHoldEnabled' \
&& defaults delete -g "$KEY" \
; echo \
&& APP_ID_PREFIX='com\.jetbrains\.|com\.microsoft\.VSCode|com\.todesktop\.230313mzl4w4u92' \
&& defaults read | egrep -o "${APP_ID_PREFIX}[^\"]+" | sort --unique \
| while read APP_ID; do
    echo "Setting \"repeat-character-while-key-held\" for application: '$APP_ID'..."
    defaults write "$APP_ID" "$KEY" -bool 'false'
done
