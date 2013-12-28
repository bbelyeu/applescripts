#!/bin/sh
# plist_chk.sh

# Check that we are being run as root
if [ $USER != "root" ]; then
  echo "You must be root to execute this script.  Please use su or sudo."
  echo ""
  exit 1
fi

# This line searches the drive for pref files & passes them on
# with the file names separated by nulls (the -print0 does this)

find /Users /Library/Preferences -type f -name "*.plist" -print0 | \

# xargs takes the output from find and filters it through plutil to
# check the consistency of each preference file.

xargs -0 /usr/bin/plutil -lint -s
