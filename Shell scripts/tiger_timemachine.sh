#!/bin/bash
# ----------------------------------------------------------------------
# jc's handy rotating-home-snapshot utility. modified from
# mike's handy rotating-filesystem-snapshot utility from
# http://www.mikerubel.org/computers/rsync_snapshots/
# ----------------------------------------------------------------------

unset PATH	# suggestion from H. Milz: avoid accidental use of $PATH

# ------------- file locations -----------------------------------------
SNAP_FROM=/Users/bbelyeu
SNAPSHOT_RW=/Volumes/Backup/snapshots
EXCLUDES=~/backup_exclude

# ------------- system commands used by this script --------------------
ECHO=/bin/echo
RM=/bin/rm
MV=/bin/mv
CP=/bin/cp
TOUCH=/usr/bin/touch
CPIO=/usr/bin/cpio
RSYNC=/usr/bin/rsync

# ------------- the script itself --------------------------------------

if [ -d $SNAPSHOT_RW ]; then

	# rotating the snapshots

	# step 1: delete the oldest snapshot, if it exists:
	if [ -d $SNAPSHOT_RW/snap.3 ]; then
		$ECHO "Clearing oldest snapshot..."
		$RM -rf $SNAPSHOT_RW/snap.3
	fi

	# step 2: shift the middle snapshots(s) back by one, if they exist
	if [ -d $SNAPSHOT_RW/snap.2 ]; then
		$ECHO "Aging snap.2..."
		$MV $SNAPSHOT_RW/snap.2 $SNAPSHOT_RW/snap.3
	fi

	if [ -d $SNAPSHOT_RW/snap.1 ] ; then
		$ECHO "Aging snap.1..."
		$MV $SNAPSHOT_RW/snap.1 $SNAPSHOT_RW/snap.2
	fi

	# step 3: make a hard-link-only (except for dirs) copy of the latest snapshot,
	# if that exists
	if [ -d $SNAPSHOT_RW/snap.0 ] ; then
		$ECHO "Aging snap.0..."
		cd $SNAPSHOT_RW/snap.0 && /usr/bin/find . -print | $CPIO -dplm $SNAPSHOT_RW/snap.1
	fi

	# step 4: rsync from the system into the latest snapshot (notice that
	# rsync behaves like cp --remove-destination by default, so the destination
	# is unlinked first.  If it were not so, this would copy over the other
	# snapshot(s) too!
	$RSYNC -va --delete --delete-excluded --exclude-from="$EXCLUDES" $SNAP_FROM $SNAPSHOT_RW/snap.0

	# step 5: update the mtime of snap.0 to reflect the snapshot time
	$TOUCH $SNAPSHOT_RW/snap.0

	# and thats it for home.
else
	$ECHO "$SNAPSHOT_RW not present. Dying."
fi