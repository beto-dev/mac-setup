#!/usr/bin/env bash

#remove apps

remove_apps=( Music Freeform Maps Mail Messages FaceTime TV Safari "Google Chrome" "iTerm" "IntelliJ IDEA" "Visual Studio Code" "GitHub Desktop" )

for key in "${!remove_apps[@]}"
do
    echo "Removing app: '${remove_apps[$key]}' from dock"
    path=/Applications/${remove_apps[$key]}.app
    dloc="$(defaults read com.apple.dock persistent-apps | grep '"_CFURLString"' | grep -n "$path" | cut -f1 -d:)"
    [[ -n "$dloc" ]] && {
        dloc=$[$dloc-1]
        /usr/libexec/PlistBuddy -c "Delete persistent-apps:$dloc" ~/Library/Preferences/com.apple.dock.plist
        killall Dock
    };:
done

#add apps

add_apps=( "Google Chrome" "iTerm" "IntelliJ IDEA" "Visual Studio Code" "GitHub Desktop" )

for key in "${!add_apps[@]}"
do
    echo "Adding app: '${add_apps[$key]}' from dock"
    path=/Applications/${add_apps[$key]}.app
    defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$path</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"; killall Dock
done
