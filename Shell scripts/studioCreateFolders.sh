#! /bin/bash
# This script creates a new FC folder for each day and puts a blank project in that
# day's folder. It quits FC with any open projects and then opens it in FC.



# The following 3 lines removes the underscore from the old scratch folder
oldFolder=`ls /Volumes/Secondary\ HD | grep _TODAY`
/usr/bin/osascript > /dev/null <<EOT
tell application "Finder"
        set label index of folder "$oldFolder" of disk "Secondary HD" to 0
end tell
EOT
newFolder=`/bin/echo $oldFolder | /usr/bin/awk  '{print $2}'`
/bin/mv "/Volumes/Secondary HD/$oldFolder" /Volumes/Secondary\ HD/$newFolder

# The following code creates a folder for the new day.
today=`date +%y%m%e`
today=`echo $today | sed 's/ /0/g'`
/bin/mkdir "/Volumes/Secondary HD/_TODAY $today"
/bin/cp /Volumes/Secondary\ HD/.blank_project.fcp /Volumes/Secondary\ HD/_TODAY\ $today/$today.fcp

/usr/bin/osascript > /dev/null <<EOT
tell application "Finder"
	set label index of folder "_TODAY $today" of disk "Secondary HD" to 6
end tell
EOT

/usr/bin/killall "Final Cut Pro"

/bin/sleep 30


/usr/bin/osascript > /dev/null <<EOT
tell application "Finder"
	open document file "$today.fcp" of folder "_TODAY $today" of disk "Secondary HD"
end tell
EOT
