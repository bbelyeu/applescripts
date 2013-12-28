echo "Make sure you are running this script as super user."
rm -rf /System/Library/CoreServices/Menu\ Extras/RemoteDesktop.menu
rm -rf /System/Library/CoreServices/RemoteManagement/
rm -rf /System/Library/PreferencePanes/ARDPref.prefPane
rm -rf /System/Library/StartupItems/RemoteDesktopAgent/
rm /Library/Preferences/com.apple.ARDAgent.plist
rm /Library/Preferences/com.apple.RemoteManagement.plist
