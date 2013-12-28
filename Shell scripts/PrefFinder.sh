#! /bin/bash
# preffinder.sh
# A utility to help find & remove preference files.  
# It searches both system-wide and user Preference Libraries.
# by Brad Belyeu 9.8.05.
#


# This function finds preference files.
_findpref() {
	find ~/Library/Preferences -name "*$app_name*"
	find /Library/Preferences -name "*$app_name*"
}


# This function deletes preference files.
_delpref() {
	find ~/Library/Preferences -name "*$app_name*" -delete
	find /Library/Preferences -name "*$app_name*" -delete
	echo "All $app_name preferences were deleted."
}


# Explanation to user.
echo "This application will help you find & delete preference"
echo "files in either the system-wide or user library by providing"
echo "the fully qualified path to the files found with the search"
echo "parameters you provide."
# User inputs application name (case-sensitive)
echo "Enter application name (case-sensitive): "
read app_name
# Error checking to see if anything was entered.
if [ "$app_name" = "" ]; then
 echo "Do you want to list ALL the preference files? [y/n]"
 read list
   if [ "$list" = y ]; then
    _findpref
   else
    exit
  fi
fi
_findpref
# Ask user if they want preferences deleted.
echo "Would you like these preference files deleted? [y/n]"
read dodelete
if [ "$dodelete" = y ]; then
    _delpref
  else
    exit
fi
exit
