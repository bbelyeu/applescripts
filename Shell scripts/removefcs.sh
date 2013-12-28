#! /bin/bash

/bin/echo "This shell script will remove Final Cut Server for you. Apple's documentation on removing Final Cut Server http://support.apple.com/kb/HT1764"
/bin/rm -r "/Library/Application Support/Final Cut Server/"
/bin/rm -r "/Library/Application Support/ProApps/Final Cut Server Unlimited System ID"
/bin/rm -r "/Library/PreferencePanes/Final Cut Server.prefPane"
/bin/rm -r "/Library/Preferences/com.apple.FinalCutServer.profile.plist"
/bin/rm -r "/Library/Preferences/com.apple.FinalCutServer.settings.plist"
/bin/rm -r "/Library/Preferences/com.apple.RegFinalCutServer.plist"
/bin/rm -r "/Library/Preferences/com.apple.FinalCutServer.backup.plist"
/bin/rm -r "/Library/LaunchDaemons/com.apple.FinalCutServer.fcsvr_ldsd.plist"
/bin/rm -r "/Library/LaunchDaemons/com.apple.FinalCutServer.fcsvr_stored.plist"
/bin/rm -r "/Library/LaunchDaemons/com.apple.FinalCutServer.postgresql.plist"
/bin/rm -r "/Library/Receipts/FinalCutServer.pkg"
/bin/rm -r "/Library/Logs/Final Cut Server/"
/bin/rm -r "/var/db/FinalCutServer/"


/usr/bin/dscl localhost delete /Local/Default/Users/fcsvr

/bin/rm /private/etc/apache2/users/fcsvr.conf

/bin/echo You still need to edit /private/etc/apache2/sites/0000_any_80_.conf
/bin/echo REMOVE THIS:   RewriteRule ^/FinalCutServer$ /~fcsvr/Sites/webstart/index.php [NC,L] 
/bin/echo REMOVE THIS:   RewriteRule ^/FinalCutServer.jnlp$ /~fcsvr/Sites/webstart/jnlp.php [NC,L]


