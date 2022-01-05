$WiFiLocation = "/Library/Preferences/SystemConfiguration"
Remove-Item -Path $WiFiLocation/com.apple.airport.preferences.plist -Force
Remove-Item -Path $WiFiLocation/com.apple.network.eapolclient.configuration.plist -force
Remove-item -Path $WiFiLocation/com.apple.wifi.message-tracer.plist -force
Remove-Item -Path $WiFiLocation/NetworkInterfaces.plist -force
Remove-item -Path $WiFiLocation/preferences.plist -Force
