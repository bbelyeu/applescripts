#!/bin/bash
# DamagedIpodUploader Script;; Badly assembled by Colin Davis (Colin at sq7.org)
# DDs all of the tracks off of an iPod, copying them slowly back to the PC.

#
# Set the default coping location
DEST=~/temp
IFS=$'\n'
mkdir $DEST


# We need to loop through the iPod, and tell it to copy each file
# We're copying every file that is M??, so MP3, MP4, M4a, etc. This won't catch audible (.aa) files.

for file in `find . -name *m?? -print`
do
DIRECTORY=`dirname $file`
DIRECTORY=${DEST}/${DIRECTORY}
mkdir "$DIRECTORY"
BASENAME=`basename $file`
DESTFILE=${DIRECTORY}/${BASENAME}
echo dd bs=512 if=$file of=$DESTFILE conv=noerror,sync
dd bs=512 if=$file of=$DESTFILE conv=noerror,sync
done