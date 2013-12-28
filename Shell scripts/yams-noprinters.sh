#! /bin/bash
# I created this script to export the desktop, documents, & bookmarks
# for a user when we are rebuilding or replacing their machine
# by Brad Belyeu - Oklahoma Publishing Company 2007

# To copy the printers over this script must be ran with root access (sudo)

# Declare variables
MYNAME=`who | grep console | awk '{print $1}'`
BACKUP_DRIVE="BackupDrive"
BACKUP_PATH="/Volumes/BackupDrive/$MYNAME"


# Error checking to make sure the backup drive is mounted

ls /volumes | grep $BACKUP_DRIVE > /dev/null
if [ $? = 1 ]; then
	echo Please mount the backup drive before running this script >> /Library/Logs/Migrate.log
	exit
fi

# This is my export data function.  It can be added to to expand export functionality.
# I had to create a tar for Desktop & Documents items, because in testing
# some items were not being copied due to the backup path being a Windows fileserver.

function export_data {
	echo Creating backup directory. >> /Library/Logs/Migrate.log
	mkdir "$BACKUP_PATH"
	if [ $? = 1 ]; then
		echo Unable to create backup directory.  It may already exist on $BACKUP_DRIVE.  Goodbye. >> /Library/Logs/Migrate.log
		exit
	else
		echo Successfully created backup directory. >> /Library/Logs/Migrate.log
	fi

	echo Backing up Desktop... >> /Library/Logs/Migrate.log
	cd $HOME/Desktop
	tar cf "$BACKUP_PATH/Desktop.tar" .
	if [ $? = 0 ]; then
		echo Successfully copied desktop. >> /Library/Logs/Migrate.log
	else
		echo Unable to copy desktop. >> /Library/Logs/Migrate.log
	fi

	echo Backing up Documents... >> /Library/Logs/Migrate.log
	cd $HOME/Documents
	tar cf "$BACKUP_PATH/Documents.tar" .
	if [ $? = 0 ]; then
		echo Successfully copied documents. >> /Library/Logs/Migrate.log
	else
		echo Unable to copy documents. >> /Library/Logs/Migrate.log
	fi
	
	echo Backing up Preferences... >> /Library/Logs/Migrate.log
	cd $HOME/Library/Preferences
	tar cf "$BACKUP_PATH/Preferences.tar" .
	if [ $? = 0 ]; then
		echo Successfully copied preferences. >> /Library/Logs/Migrate.log
	else
		echo Unable to copy preferences. >> /Library/Logs/Migrate.log
	fi

	echo Backing up Stickies... >> /Library/Logs/Migrate.log
	cp $HOME/Library/StickiesDatabase "$BACKUP_PATH/"
	if [ $? = 0 ]; then
		echo Successfully copied Stickies. >> /Library/Logs/Migrate.log
	else
		echo Unable to copy Stickies. >> /Library/Logs/Migrate.log
	fi

	echo Backing up Safari Bookmarks... >> /Library/Logs/Migrate.log
	cp $HOME/Library/Safari/Bookmarks.plist "$BACKUP_PATH/"
	if [ $? = 0 ]; then
		echo Successfully copied safari bookmarks. >> /Library/Logs/Migrate.log
	else
		echo Unable to copy safari bookmarks. >> /Library/Logs/Migrate.log
	fi

	echo Backing up Firefox data... >> /Library/Logs/Migrate.log
	cd $HOME/Library/Application\ Support/Firefox
	tar cf "$BACKUP_PATH/Firefox.tar" .
	if [ $? = 0 ]; then
		echo Successfully copied firefox bookmarks. >> /Library/Logs/Migrate.log
	else
		echo Unable to copy firefox bookmarks. >> /Library/Logs/Migrate.log
	fi

	echo Backing up Keychains... >> /Library/Logs/Migrate.log
	cd $HOME/Library/Keychains
	tar cf "$BACKUP_PATH/Keychains.tar" .
	if [ $? = 0 ]; then
		echo Successfully copied keychains. >> /Library/Logs/Migrate.log
	else
		echo Unable to copy keychains. >> /Library/Logs/Migrate.log
	fi
	
	echo Export process completed!  >> /Library/Logs/Migrate.log

	exit
}

function import_data {
#	Perform check to see if exported directory exists.
	ls "$BACKUP_PATH" > /dev/null
	if [ $? = 1]; then
		echo Your data has not been exported yet.  Please run -export first. >> /Library/Logs/Migrate.log
		exit
	fi

	echo Importing Desktop items... >> /Library/Logs/Migrate.log
	cd $HOME/Desktop
	tar xf "$BACKUP_PATH/Desktop.tar"
	if [ $? = 0 ]; then
		echo Successfully copied desktop. >> /Library/Logs/Migrate.log
	else
		echo Unable to copy desktop. >> /Library/Logs/Migrate.log
	fi

	echo Importing Documents... >> /Library/Logs/Migrate.log
	cd $HOME/Documents
	tar xf "$BACKUP_PATH/Documents.tar"
	if [ $? = 0 ]; then
		echo Successfully copied documents. >> /Library/Logs/Migrate.log
	else
		echo Unable to copy documents. >> /Library/Logs/Migrate.log
	fi
	
	echo Importing Preferences... >> /Library/Logs/Migrate.log
	cd $HOME/Library/Preferences
	tar xf "$BACKUP_PATH/Preferences.tar"
	if [ $? = 0 ]; then
		echo Successfully copied preferences. >> /Library/Logs/Migrate.log
	else
		echo Unable to copy preferences. >> /Library/Logs/Migrate.log
	fi

	echo Importing Stickies... >> /Library/Logs/Migrate.log
	cp -f "$BACKUP_PATH/StickiesDatabase" $HOME/Library/
	if [ $? = 0 ]; then
		echo Successfully copied stickies. >> /Library/Logs/Migrate.log
	else
		echo Unable to copy stickies. >> /Library/Logs/Migrate.log
	fi

	echo Importing Safari Bookmarks... >> /Library/Logs/Migrate.log
	ls $HOME/Library/Safari > /dev/null
	if [ $? = 1 ]; then
		mkdir $HOME/Library/Safari
	fi
	cp -f "$BACKUP_PATH/Bookmarks.plist" $HOME/Library/Safari/
	if [ $? = 0 ]; then
		echo Successfully copied safari bookmarks. >> /Library/Logs/Migrate.log
	else
		echo Unable to copy safari bookmarks. >> /Library/Logs/Migrate.log
	fi

	echo Importing Firefox data... >> /Library/Logs/Migrate.log
	ls $HOME/Library/Application\ Support/Firefox > /dev/null
	if [ $? = 1 ]; then
		mkdir $HOME/Library/Application\ Support/Firefox
	fi
	cd $HOME/Library/Application\ Support/Firefox
	tar xf "$BACKUP_PATH/Firefox.tar"
	if [ $? = 0 ]; then
		echo Successfully copied firefox bookmarks. >> /Library/Logs/Migrate.log
	else
		echo Unable to copy firefox bookmarks. >> /Library/Logs/Migrate.log
	fi
	
	echo Importing Keychains... >> /Library/Logs/Migrate.log
	cd $HOME/Library/Keychains
	tar xf "$BACKUP_PATH/Keychains.tar"
	if [ $? = 0 ]; then
		echo Successfully copied keychains. >> /Library/Logs/Migrate.log
	else
		echo Unable to copy keychains. >> /Library/Logs/Migrate.log
	fi

	echo Import process completed!  >> /Library/Logs/Migrate.log
	
	exit
}

if [ "$1" = "-export" ]; then
	echo "Beginning export of your Desktop, Documents, Stickies, Safari & Firefox bookmarks, & keychains." >> /Library/Logs/Migrate.log
	export_data
elif [ "$1" = "-import" ]; then
	echo "Beginning import of your desktop, documents, stickies, safari & firefox bookmarks, & keychains." >> /Library/Logs/Migrate.log
	import_data
else
#	It would be nice to give the user a contextual menu if they don't enter any arguments.
	echo "This command will export or import your OS X items for you depending on which switch you use."
	echo "Please use the -export argument for exporting & the -import argument for importing."
	echo "Thank you for your cooperation."
	exit
fi

exit