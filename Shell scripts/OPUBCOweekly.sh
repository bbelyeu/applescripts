#! /bin/bash
# 
# This shell script has 5 main functions:
# 1. run fsck to repair filesystem
# 2. repair permissions on /
# 3. optimize drive
# 4. Clean cache & temp files
# 5. Run regular maintenance tasks
#
# Written by Brad Belyeu

# Manage log file
/bin/rm /Library/Logs/OPUBCOweekly.log
/usr/bin/touch /Library/Logs/OPUBCOweekly.log

#Add date to log file
/bin/date >> /Library/Logs/OPUBCOweekly.log

# 1. Run fsck to check filesystem for consistency
/sbin/fsck -fy >> /Library/Logs/OPUBCOweekly.log
# Check error level to see if command completed successfully.
if [ $? = "0" ]; then
	echo File system check was clean! >> /Library/Logs/OPUBCOweekly.log
else
	echo Something went wrong with the file system check! >> /Library/Logs/OPUBCOweekly.log
fi
#
# 2. Repair permissions on root directory
/usr/sbin/diskutil repairpermissions / >> /Library/Logs/OPUBCOweekly.log
#
# 3. optimize drive
/usr/bin/update_prebinding -root / >> /Library/Logs/OPUBCOweekly.log
# Check error leve to see if command completed successfully.
if [ $? = "0" ]; then
	echo Drive has been optimized for better performance! >> /Library/Logs/OPUBCOweekly.log
else
	echo Something went wrong with optimizing the drive! >> /Library/Logs/OPUBCOweekly.log
fi
#
# 4. Clean cache & temp files
# I don't want to setup a lot of files to delete out for no reason,
#   but as Robyn & I find issues I would like to create an easy
#   way to clean things up here.
#
# 5. Run regular OS X built-in maintenance scripts
/usr/sbin/periodic daily weekly monthly >> /Library/Logs/OPUBCOweekly.log
if [ $? = "0" ]; then
	echo All maintenance scripts completed successfully. >> /Library/Logs/OPUBCOweekly.log
else
	echo Something went wrong with the maintenance scripts. >> /Library/Logs/OPUBCOweekly.log
fi

return 0