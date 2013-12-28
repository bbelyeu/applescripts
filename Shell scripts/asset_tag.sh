#! /bin/bash
# The purpose of this shell script is to set asset tags for the 
#  Oklahoma Publishing Company.

ASSET_TAG=$1

echo "This script must be ran as root (sudo)."

if [ "$ASSET_TAG" = "" ]; then
	echo "Please enter the asset tag to use for this machine: "
	read ASSET_TAG
	echo $ASSET_TAG will be used for this machine.
	nvram Asset_Tag=$ASSET_TAG
else nvram Asset_Tag=$ASSET_TAG
fi
nvram Owner="The Oklahoma Publishing Company"
if [ $? = 0 ]; then
	echo Asset tag applied successfully!
else
	echo Unable to apply asset tag!?
exit
