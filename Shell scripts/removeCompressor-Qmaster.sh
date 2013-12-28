#! /bin/bash
# The instructions for this article can be found on Apple's website only at:
# http://support.apple.com/kb/TS1888?viewlocale=en_US

PATH=$PATH:/bin/:/sbin/

rm -Rf /Applications/Apple\ Qadministrator.app
rm -Rf /Applications/Apple\ Qmaster.app
rm -Rf /Applications/Compressor.app
rm -Rf /Applications/Utilities/Batch\ Monitor.app
rm -Rf /Library/Application\ Support/Apple\ Qmaster
rm -Rf /Library/Frameworks/AECore.framework
rm -Rf /Library/Frameworks/Compressor.framework
rm -Rf /Library/Frameworks/MediaServerAPI.framework
rm -Rf /Library/Frameworks/Qmaster.framework
rm -Rf /Library/Logs/Qmaster
rm -Rf /Library/PreferencePanes/Apple\ Qmaster.prefPane
rm -Rf /Library/Receipts/Compressor.pkg
rm -Rf /Library/Receipts/ProMediaIO.pkg
rm -Rf /Library/Receipts/Qmaster.pkg
rm -Rf /Library/Receipts/Qmaster_Frameworks.pkg
rm -Rf /Library/StartupItems/Qmaster

rm -f /usr/sbin/qmasterca
rm -f /usr/sbin/qmasterd
rm -f /usr/sbin/qmasterprefs
rm -f /usr/sbin/qmasterqd

rm -Rf /var/spool/qmaster/*

shutdown -r now
