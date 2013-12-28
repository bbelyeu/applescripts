#! /bin/bash
# This script will bind our macs to our domain.
# Written by Brad Belyeu

hostname=`/usr/sbin/scutil --get LocalHostName`
username=$1
password=$2


function bindPanther {
# Commands for binding 10.3
# Activate the AD plugin
defaults write /Library/Preferences/DirectoryService/DirectoryService "Active Directory" "Active"
plutil -convert xml1 /Library/Preferences/DirectoryService/DirectoryService.plist
# Binding to AD
dsconfigad -f -a $hostname -forest oklahoman.com -domain opubco.oklahoman.com -u $username -p $password -ou "OU=Computers,OU=Accounts,DC=opubco,DC=oklahoman,DC=com"
sleep 20
dsconfigad -multidomain disable -localhome enable -mountstyle smb -caching enable -groups g_ISSysSupportTeam -preferred opubco-01.opubco.oklahoman.com
sleep 10
# Add the AD node to the search path
echo "Creating custom Authentication path..."
dscl /Search -create / SearchPolicy CSPSearchPath
echo "Adding domain to Authentication path..."
dscl /Search -append / CSPSearchPath "/Active Directory/opubco.oklahoman.com"
sleep 10
echo "Creating custom contacts..."
dscl /Search/Contacts -create / SearchPolicy CSPSearchPath
echo "Adding domain to contacts..."
dscl /Search/Contacts -append / CSPSearchPath "/Active Directory/opubco.oklahoman.com"
}


function bindTiger {
# Commands for binding 10.4
# Activate the AD plugin
defaults write /Library/Preferences/DirectoryService/DirectoryService "Active Directory" "Active"
plutil -convert xml1 /Library/Preferences/DirectoryService/DirectoryService.plist
# Bind to AD
dsconfigad -f -a $hostname -domain opubco.oklahoman.com -u $username -p $password -ou "OU=Computers,OU=Accounts,DC=opubco,DC=oklahoman,DC=com"
sleep 20
dsconfigad -groups g_ISSysSupportTeam -localhome enable -protocol smb -mobile enable -mobileconfirm disable -useuncpath disable -shell /bin/bash -preferred opubco-01.opubco.oklahoman.com
sleep 10
# Restart DirectoryService (necessary to reload AD plugin activation settings)
echo "Restarting Directory Services..."
killall DirectoryService
sleep 20
# Add the AD node to the search path
echo "Creating custom Authentication path..."
dscl /Search -create / SearchPolicy CSPSearchPath
echo "Adding domain to Authentication path..."
dscl /Search -append / CSPSearchPath "/Active Directory/opubco.oklahoman.com"
sleep 10
echo "Creating custom contacts..."
dscl /Search/Contacts -create / SearchPolicy CSPSearchPath
echo "Adding domain to contacts..."
dscl /Search/Contacts -append / CSPSearchPath "/Active Directory/opubco.oklahoman.com"
}


myOS=`sw_vers -productVersion`
myOS=`echo $myOS | cut -d . -f 2`
if [ $myOS = 4 ]
	then bindTiger
	elif [ $myOS = 3 ]
		then bindPanther
	else exit 2
fi