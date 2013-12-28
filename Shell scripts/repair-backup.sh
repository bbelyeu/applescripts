#! /bin/bash
# A script I created to repair permissions & backup my drive
diskutil repairPermissions / > /Users/bbelyeu/Desktop/Repair-Backup.txt
echo Permissions have been repaired.
rsync -rt /Users/bbelyeu/ /Volumes/Backup >> /Users/bbelyeu/Desktop/Repair-Backup.txt
echo Backup complete!
