#! /bin/bash

#	Created by Brad Belyeu for the Oklahoma Publishing Company-
#	This script will allow us to quickly copy files from the old user folder to a new
#	Active Directory user folder for each Mac that we add to the domain.
#
#	This script must be ran with sudo privileges!

TEMP_DIR=/Temp
		# Location of temporary directory
CURRENT_USER=`who | grep console | awk '{print $1}'`
		# Sets user that is running script

function export_data {
	#  create temp directory
	echo Creating temp directory...
	mkdir $TEMP_DIR
	#  if there is an error exit
	if [ $? = 1 ]
		then 
			echo Unable to create temporary directory!
			exit 1
	fi
	#  change permissions on folder so everyone can read and write
	echo Changing permissions...
	chmod 777 $TEMP_DIR
	#  if there is an error exit
	if [ $? = 1 ]
		then 
			echo Unable to change permissions on temporary folder!
			exit 2
	fi
	#  copy files
	echo Copying files...
	ditto -rsrc /Users/$CURRENT_USER $TEMP_DIR
	#  if there is an error exit
	if [ $? = 1 ]
		then 
			echo Unable to copy files from the user folder to the temp directory!
			exit 3
	fi
}

function import_data {
	#	Change ownership of files to newly created user
	echo Changing ownership of temp files...
	sudo chown -R $CURRENT_USER:admin $TEMP_DIR
	#	if there is an error exit
	if [ $? = 1 ]
		then 
			echo Unable to change ownership of files in the temp directory!
			exit 4
	fi
	#	Change ther permissions on the files to match other user's folders
	echo Changing permissions on files...
	chmod -R 740 $TEMP_DIR
	#  if there is an error exit
	if [ $? = 1 ]
		then 
			echo Unaable to change permissions on the temp directory!
			exit 5
	fi
	#	Copy the files back into user folder
	echo Copying files
	ditto -rsrc $TEMP_DIR /Users/$CURRENT_USER
	#  if there is an error exit
	if [ $? = 1 ]
		then 
			echo Unable to copy files from temp back to the user folder!
			exit 6
	fi
	#	Remove temporary directory
	echo Removing temporary directory...
	rm -d -f -R $TEMP_DIR
	if [ $? = 1 ]
		then 
			echo Unable to remove the temporary folder!
			exit 7
	fi
}

if [ "$1" = "-export" ]
	then 
	echo Beginning data export...
	export_data
	EXIT_STATUS=$?
elif [ "$1" = "-import" ]
	then 
	echo Beginning data import...
	import_data
	EXIT_STATUS=$?
else
	echo This script must be ran with the -import or -export flag depending on what you want to do.
	exit
fi

exit