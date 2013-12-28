#!/bin/sh

# AppleJack, an open source basic troubleshooting utility for Mac OS X
#
# Copyright 2002-5 Kristofer Widholm, The Apotek
#
# This program is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the
# Free Software Foundation; either version 2 of the License, or -at your
# option- any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
#
# You can reach The Apotek at http://www.theapotek.com, or
# The Apotek, 330 S 3rd St Suite 14, Brooklyn NY 11211
#


########################################################################
#	START OF APPLEJACK CONFIGURATION ############# CONSTANTS ###########
########################################################################
VERSION="1.4.2"
COPYRIGHT="Copyright 2002-5 Kristofer Widholm, The Apotek    "
# standard exit code for usage error [from C, /usr/include/sysexits.h]
EX_OK=0 # successful termination
EX_USAGE=64	# user error
EX_SOFTWARE=70	# internal software error
EX_OSERR=71	# system error [e.g., can't fork]

#	Bold: \033[1m	Underline: \033[4m	Magenta: \033[35m	Yellow: \033[33m	Red: \033[31m
bE='\033[31m*** '	#	Start formatting for "errors"
eE=' ***\033[0m'	#	End of format for errors.
bH='\033[35m\033[1m\033[4m'	#	Color code for key highlights
eH='\033[0m'	#	End of color code for key highlights
bK='\033[35m\033[1m'	#	Color code for key entry
eK='\033[0m'	#	End of formatting for key entry
bW='\033[33m'	#	formatting for "warnings"
eW='!\033[0m'	#	End of formatting for warnings.
bS='\033[1m'	#	Begin strong
eS='\033[0m'	#	End strong
bPar='('	#	Parentheses in strings confuse some text editors.
ePar=')'
GOODBYE="*********************** GOODBYE FROM APPLEJACK ***********************"
TASKNAMES=( [0]="${bH}a${eH}uto pilot" [1]="repair ${bH}d${eH}isks" [2]="repair ${bH}p${eH}ermissions" [3]="cleanup ${bH}c${eH}ache files" [4]="validate pre${bH}f${eH}erence files"  [5]="clean up ${bH}v${eH}irtual memory" [6]="${bH}q${eH}uit" )
TASKCODES=( a d p c f v q )
TASKCODESUC=( A D P C F V Q )
TASKS=( [0]='AUTO=1;selectNext' [1]='repairDisks' [2]='fixPermissions' [3]='cacheCleanup' [4]='validatePreferences' [5]='cleanupVM' [6]='quitScript' )
xTASKNAMES=( [0]="${bH}b${eH}less system folder" [1]="hard disk ${bH}i${eH}tegrity check" [2]="repair ${bH}p${eH}ermissions" [3]="cleanup ${bH}c${eH}ache files" [4]="validate pre${bH}f${eH}erence files"  [5]="remove ${bH}s${eH}wap files" [6]="${bH}q${eH}uit" )
xTASKCODES=( a d p c f s q )
xTASKCODESUC=( A D P C F S Q )
xTASKS=( [0]='echo "doing task 0"' [1]='echo "doing task 1"' [2]='echo "doing task 2"' [3]='echo "doing task 3"' [4]='echo "doing task 4"' [5]='echo "doing task 5"' [6]='echo "doing task 6"' )
DEEP=0	#	Set deep mode to 0 [off], unless specified at runtime
DEFAULTDELAY=3	#	How long should the default delay be
CANCELTIME=10	#	How many seconds should the user have to cancel automatic tasks?
DRL=9	#	Disk Repair Limit: How many times should disk repair repeat before aborting [auto mode], or posting a notice [manual mode]?
NIDB="/private/var/db/netinfo/local.nidb"	#	Where is the netinfo database located?
LOGFILE="/private/var/log/AppleJack.log"	#	Where does the AppleJack log go?
#	check for binaries
BADENV=0
if [ -x /usr/bin/awk ];then
	AWK='/usr/bin/awk'
else
	AWK='awk'
	BADENV=1
fi
if [ -x /bin/chmod ];then
	CHMOD='/bin/chmod'
else
	CHMOD='chmod'
	BADENV=1
fi
if [ -x /bin/cp ];then
	CP='/bin/cp'
else
	CP='cp'
	BADENV=1
fi
if [ -x /usr/bin/file ];then
	FILE='/usr/bin/file'
else
	FILE='file'
	BADENV=1
fi
if [ -x /usr/bin/grep ];then
	GREP='/usr/bin/grep'
else
	GREP='grep'
	BADENV=1
fi
if [ -x /bin/ls ];then
	LS='/bin/ls'
else
	LS='ls'
	BADENV=1
fi
if [ -x /bin/mkdir ];then
	MKDIR='/bin/mkdir'
else
	MKDIR='mkdir'
	BADENV=1
fi
if [ -x /bin/mv ];then
	MV='/bin/mv'
else
	MV='mv'
	BADENV=1
fi
if [ -x /usr/bin/nicl ];then
	NICL='/usr/bin/nicl'
else
	NICL='nicl'
	BADENV=1
fi
if [ -x /usr/bin/plutil ];then
	PLUTIL='/usr/bin/plutil'
else
	PLUTIL='plutil'
	BADENV=1
fi
if [ -x /bin/rm ];then
	RM='/bin/rm'
else
	RM='rm'
	BADENV=1
fi
if [ -x /bin/rmdir ];then
	RMDIR='/bin/rmdir'
else
	RMDIR='rmdir'
	BADENV=1
fi
if [ -x /usr/bin/sed ];then
	SED='/usr/bin/sed'
else
	SED='sed'
	BADENV=1
fi
########################################################################
#	END OF APPLEJACK CONFIGURATION #####################################
########################################################################


#	Thanks to "Maarten" from the Ars Technica Open Forum for providing this function.
function checkAlias() {
	testfile="$1"
	#	To be an alias, it must be of zero file size, 
	#	have a resource fork,
	#	that contains an 'alis' resource.
	#	TODO: ascertain if namedfork is available in 10.2. Preliminary result from looking at Web postings: yes. But would like to test.
	#	Old way
	#	test -s "$testfile" || test -s "$testfile/rsrc" && grep --quiet 'alis' "$testfile/rsrc" && return 1
	#	New way
	test -s "$testfile" || test -s "$testfile/..namedfork/rsrc" && grep --quiet 'alis' "$testfile/..namedfork/rsrc" && return 1
	return 0;
}


function chooseUserDirectory () {
	if [ -r "$NIDB" ] && [ -x "$NICL" ];then
		USERHOMES=`$NICL -raw "$NIDB" -list /users home | $AWK '{ print $2 }' | $GREP -E -v '(/dev|/Library|/private|/var)'`
		PREFIX=""
	else
		loggit "Unable to use netinfo as data source. Searching /Users directory instead:"
		USERHOMES=`$LS -p /Users | $GREP '/' | $GREP -E -v '(Shared|^\.)'`
		PREFIX="/Users/"
	fi
	uc=0
	for USERHOME in $USERHOMES;do
		if [ $uc -ge 3 ]; then
			echo ""	#	end row
			uc=0	#	start new row
		fi
		echo -n "${PREFIX}${USERHOME}		"
		let "uc=(uc+1)"
	done
	echo ""
	echo -n "Enter the home directory you want to perform this task on [Example: /Users/jack]> "
	read ANS
	if [ ! -d "$ANS" ];then
		echo "$ANS does not exist. Please try again."
		chooseUserDirectory
	fi
	ud="$ANS"
}


function countDown() {
	if [ -z "$1" ];then
		let COUNT=$DEFAULTDELAY
	else
		COUNT=$1
	fi
	for ((i=1; i <= COUNT ; i++));do
		echo -n ".";
		sleep 1
	done
	echo ""
	return
}


function loggit() {
	if [ "$1" = "-n" ];then
		nls="$1"
		string="$2"
	else
		nls=""
		string="$1"
	fi
	echo $nls -e "$string"
	if [ $WRITEABLEROOT -eq 1 ];then
		if  [ -z "$TEMPLOG" ];then
			#	file system is writable and there is nothing in the templog to write to the log
			#	filter out any formatting codes when you put the string into the log.
			echo $nls "$string" | $SED -e 's/\\033\[[0-9]*m//g' | tee -a "$LOGFILE" >/dev/null
		else
			#	file system has become writable and we must dump the templog to the log file
			string=`echo "$string" | $SED -e 's/\\\033\[[0-9]*m//g'` #	strip color codes for log
			TEMPLOG="$TEMPLOG:n:$string" #	Wish wish wish I could find a way to create a newline here
			#	If AppleJack log does not exist, or is greater than 500k, start new log
		 	if [ ! -e "$LOGFILE" ] || [ `/usr/bin/du -k "$LOGFILE" | $AWK '{ print $1 }'` -gt 500 ];then
				echo "Resetting $LOGFILE"
				echo "****************** ${D}:  NEW LOG STARTED ******************" > "$LOGFILE"
				echo "" >> "$LOGFILE"
			fi
			#	keep this on two separate lines
			echo "$TEMPLOG" | $SED -e 's/:n:/ \
/g' >> "$LOGFILE"
			#	disable temp logging for future iterations
			unset TEMPLOG
		fi
	else
		#	file system is not writeable, doing temp logging
		string=`echo "$string" | $SED -e 's/\\\033\[[0-9]*m//g'` #	strip color codes for log
		TEMPLOG="$TEMPLOG $string"
	fi
}


function mountem() {
	if [ -z "$MOUNTALL" ];then
		if [ $WRITEABLEROOT -eq 0 ];then
			loggit "Let's mount the startup file system for write access..."
			if /sbin/mount -vuw /;then
				WRITEABLEROOT=1
				loggit "Done."
				loggit ""
				loggit -n "Checking for /tmp directory: "
				if [ -d "/tmp" ];then
					loggit "/tmp directory exists."
				else
					loggit "${bW}/tmp directory does not exist${eW}"
					if [ ! -d "/private/tmp" ];then
						loggit "${bW}/private/tmp does not exist either${eW}"
						loggit -n "Creating /private/tmp: "
						mkdir -v "/private/tmp" | tee -a "$LOGFILE"
						loggit -n "Setting correct permissions: "
						chmod -v 1777 "/private/tmp" | tee -a "$LOGFILE"
					fi
					loggit -n "Creating symbolic link from /tmp to /private/tmp: "
					ln -sv "/private/tmp" "/tmp" | tee -a "$LOGFILE"
					if [ -d "/tmp" ];then
						loggit "All set."
						SANDBOX="/tmp"
						cd "$SANDBOX"
					else
						loggit "${bW}Could not create /tmp directory. Something seems to be wrong "
						loggit "with your file system. Proceed with caution${eW}"
					fi
				fi
				loggit "Done."
			else
				loggit "${bE}Root file system could not be mounted. Script must quit.              ${eE}"
				exit $EX_OSERR
			fi
		else
			loggit "Root file system already mounted. Continue."
		fi
		if [ $# -gt 0 ] && [ "$1" = "root" ];then
			loggit "Skipping the Mac OS X file system."
		else
			case "$ANIMAL" in 
				2) 
					autodiskmount
					#	Start the Mac OS X disk system, so DiskArb is running
					loggit "Starting the Mac OS X disk system..."
					SystemStarter start Disks 2>&1 >/dev/null &	#Get rid of all output.
					pid=$!
					wait $pid	#	Wait for SystemStarter to finish before continuing
					ES=$?
					MOUNTALL=1
					sleep 8
					loggit "Done starting the Mac OS X disk system. -$ES-"
					loggit ""
				;;
				3) 
					echo "Panther requires us to start up the bootstrap daemons first."
					loggit "Starting bootstrap servers..."
					/usr/libexec/register_mach_bootstrap_servers /private/etc/mach_init.d &
					pidA=$!
					wait $pidA #	The wait command returns the exit status of the job it waits for
					ES=$?
					loggit "Done. -$ES-"
					#	Start the Mac OS X disk system, so DiskArb is running
					loggit "Starting the Mac OS X disk system..."
					SystemStarter start Disks 2>&1 >/dev/null &	#Get rid of all output.
					pidB=$!
					wait $pidB	#	Wait for SystemStarter to finish before continuing
					ES=$?
					MOUNTALL=1
					sleep 8
					loggit "Done starting the Mac OS X disk system. -$ES-"
					loggit ""
				;;
				4) 
					echo "Tiger requires us to start up the bootstrap daemons first."
					loggit "Starting bootstrap servers..."
#					/usr/libexec/register_mach_bootstrap_servers /private/etc/mach_init.d 2>&1 >/dev/null &
					/usr/libexec/register_mach_bootstrap_servers /private/etc/mach_init.d 
					pidA=$!
					wait $pidA #	The wait command returns the exit status of the job it waits for
					ES=$?
					#TODO: figure out how to redirect console output so it doesn't go the, uh, console.
					#TODO: figure out how to make the script wait for parent process AND all children to stop before continuing.
					sleep 15
					loggit "Done. -$ES-"
					MOUNTALL=1
					loggit ""
				;;
			esac
		fi
	else
		loggit "All necessary file services are already started. Continue."
	fi
	echo ""
	return
}


function progress() {
	process="$1"
	message="$2"
	sleeptime=$3
	mLength=`echo $message | wc -m`
	let "mLength=(mLength-1)"
	let "line=(67-mLength)"
	dot=0
	echo -n "$message"
	sleep $sleeptime
	ps=`ps -ax | $GREP "$process" | $GREP -v 'grep'`
	while [ ! -z "$ps" ];do
		if [ $dot -ge $line ];then
			echo ""
			echo -n "$message"
			let "dot=0"
		else
			echo -n "."
			let "dot=(dot+1)"
		fi
		sleep $sleeptime
		ps=`ps -ax | $GREP "$process" | $GREP -v 'grep'`
	done
}


function repairDisks() {
	loggit -n "Disk repair"
	countDown
	#	set disk repair count if not passed
	if [ -z $1 ];then
		drc=0
	fi
	if [ $WRITEABLEROOT -ne 0 ];then
		loggit "${bW}Root disk has already been mounted for write access${eW}"
		echo "If you want to repair the disk, restart into single user mode and "
		taskDescription=`echo ${TASKNAMES[1]} | $SED -e 's/\\\033\[[0-9]*m//g'`
		echo "choose '$taskDescription' as your first task."
		loggit "Disk repair aborted."
	else
		if [ "$JOURNALED" = "true" ];then
			options='-f'
		else
			options=''
		fi
		if /sbin/fsck -y $options;then
			#	No problems found
			loggit "Success! Either your disk had no errors, or it was repaired "
			loggit "successfully."
			echo "(If you were prompted to restart, you can ignore that for now.)"
			echo ""
			loggit "Done with disk repairs -${ES}-"
		else
			let "drc=($drc+1)"
			#	Problems found
			loggit "Some errors were found that were not repaired. You should "
			loggit "attempt to repair the disk again. -${ES}-"
			if [ $AUTO -gt 0 ];then
				loggit -n "AppleJack will try to repair the disk again in $CANCELTIME seconds. [${bH}c${eH}ancel] ${bK}"
				read -t $CANCELTIME REPLY[$AUTO] <&1	#	Define different REPLY variable for different task
				echo -en "${eK}"
				if [ -z "${REPLY[$AUTO]}" ];then
					#	Block auto mode from running more than DRL disk repair attempts.
					if [ $drc -ge $DRL ];then
						echo ""
						echo ""
						loggit "AppleJack has attempted $drc disk repairs without success. ${bW}Apple's "
						loggit "standard disk repair utility is having trouble making the necessary "
						loggit "repairs${eW} You might want to consider using other tools such as Disk "
						loggit "Warrior(tm) or TechTool Pro(tm)."
						ANS="n"
					else
						ANS="y"
					fi
				else
					ANS="n"
				fi
			else
				#	Tell user to maybe give up if more than DRL attempts have been made.
				if [ -z $speedup ];then
					speedup=0
				fi
				let "manualLimit=($DRL + $speedup)" 
				if [ $drc -ge $manualLimit ];then
					echo ""
					echo -e "You have attempted $drc repairs without success. ${bW}Apple's standard disk "
					echo -e "repair utility is having trouble fixing this disk${eW} You might want to "
					echo "consider using other tools such as Disk Warrior(tm) or TechTool Pro(tm)."
					let "speedup=(($manualLimit / 2) +1)"	#	post warning more frequently now, but not every time
					echo ""
				fi
				echo -en "Repeat disk repair? [${bH}y${eH}/${bH}n${eH}]: ${bK}"
				read ANS
				echo -en "${eK}"
			fi
			echo ""	#	Put a line break after input.
			if [ "$ANS" = "y" ]; then
				repairDisks $drc
			else
				loggit "${bW}Disk repair aborted. The disk directory is not healthy${eW}"
				echo "We recommend you repair the disk before doing anything else."
				if [ $AUTO -ne 0 ];then #	only do this if in auto mode
					echo -e "${bW}As a precaution, AppleJack will now exit automatic mode${eW}"
					AUTO=0
				fi
			fi
		fi 
	fi
}


function validatePreferences() {
	loggit -n "Validating preference files"
	countDown
	mountem	#	Make sure disks are mounted and writable first
	if [ -d '/private/etc/mach_init.d' ];then
		loggit "Checking mach init preference files ${bPar}/etc/mach_init.d${ePar}): "
		prefCheck '/private/etc/mach_init.d'
		loggit "Done. -$?-"
		loggit ""
	fi
	if [ -d '/private/var/db/SystemConfiguration' ];then
		loggit "Checking system configuration files ${bPar}/var/db/SystemConfiguration${ePar}): "
		prefCheck '/private/var/db/SystemConfiguration'
		loggit "Done. -$?-"
		loggit ""
	fi
	if [ -d '/private/var/root/Library/Preferences' ];then
		loggit "Checking root preference files ${bPar}/var/root/Library/Preferences${ePar}): "
		prefCheck '/private/var/root/Library/Preferences'
		loggit "Done. -$?-"
		loggit ""
	fi
	if [ -d '/Library/Preferences' ];then
		loggit "Checking system preference files ${bPar}/Library/Preferences${ePar}): "
		prefCheck '/Library/Preferences'
		loggit "Done. -$?-"
	fi
	if [ $AUTO -eq 0 ];then #	Only run this option if auto mode is off.
		echo ""
		echo "Would you like to find and remove corrupted preference files for any "
		echo -en "specific user? [${bH}y${eH}/${bH}n${eH}]: ${bK}"
		read ANS
		echo -en "${eK}"
		while [ "$ANS" = "y" ];do
				chooseUserDirectory	#	This function sets the value for ud, user directory
				if [ -d "$ud/Library/Preferences" ];then
					loggit "Checking the preference files in $ud/Library/Preferences"
					prefCheck "$ud/Library/Preferences"
					loggit "Done. -$?-"
				else
					loggit "${bE}$ud/Library/Preferences does not exist!${eE}"
					echo "Skipping this task."
				fi
				echo ""
				echo "Would you like to find and remove corrupted preference files for another "
				echo -en "user? [${bH}y${eH}/${bH}n${eH}]: ${bK}"
				read ANS
				echo -en "${eK}"
		done
	fi
}
function prefCheck() {
	owd=`pwd`
	folder="$1"
	qFolder="$1 ${bPar}Corrupt${ePar}"
	
	cd "$folder"

	if [ -z "$2" ];then
		badPrefs=`find . -type f \( -name "*.plist" \) -print0 | xargs -0 $PLUTIL -s`
	elif [ "$2" = "xml" ];then
		badPrefs=`find . -type f \( -name "*.plist" -o -name "*.xml" \) -print0 | xargs -0 $PLUTIL -s`
	fi
	#	This is kind of crummy to have to use the -zq%qz- kluge, but I see no better way at present
	badPrefs=`echo $badPrefs | $SED -e "s#:[^/]*#:#g" -e "s/ /-zq%qz-/g" -e "s/:/ /g"`
	if [ "$badPrefs" != "" ];then

		if [ ! -d "$qFolder" ]; then
			$MKDIR "$qFolder" #	Is there a better place for this?
			$CHMOD 777 "$qFolder" #	Don't want a user stuck with a folder they can't delete
			#	Is this a possible security problem? No, because all preferences folders are already readable by everyone [except /var/root/Library/Preferences]
		fi
		filesMoved=0
		for tBP in $badPrefs;do 
			#	Convert to usable form for processing. Remove any leading dot. (Usually only the first corrupt preference file will have this).
			bp=`echo $tBP | $SED -e 's/-zq%qz-/\ /g' -e 's/&/\&/g' -e 's/^\.//'`
			#	Create path at which the preference file should live.
			bpDir=`echo $bp | $SED -e 's/\/[^\/]*$//'`; 

			#	No need to check for sym or hard links, as plutil correctly follows them to the source file
			#	checkAlias returns 1 if file is an alias; 0 if not.
			if checkAlias ".$bp" ; then
				loggit "Corrupt preference file: .$bp"
				loggit "--> Moving to ${qFolder}${bpDir}"
				if [ ! -d '${qFolder}${bpDir}' ];then
					$MKDIR -p "${qFolder}${bpDir}"
				fi
				$MV ".$bp" "${qFolder}${bpDir}"
				let "filesMoved=$filesMoved+1"
			fi
		done
		echo ""
		if [ $filesMoved -lt 1 ]; then
			rVal=0
			#	Since no corrupt files were moved, attempt to remove directory.
			#	This will fail in cases where files were moved on a previous run, in
			#	which case we just want it to fail silently, and leave the directory
			#	in place. This situation is currently only applicable in cases that 
			#	involve aliases.
			$RMDIR "$qFolder" 2>/dev/null
		elif [ $filesMoved -eq 1 ]; then
			loggit "One corrupt preference file was moved."
			rVal=1
		else
			loggit "$filesMoved corrupt preference files were moved."
			rVal=1
		fi
		#	Return to old location
		cd "$owd"
		return $rVal
	fi	
}


function cleanupVM () {
	loggit -n "Virtual memory cleanup"
	countDown
	if [ $WRITEABLEROOT -ne 1 ];then
		mountem	#	Make sure disks are mounted first
	fi
	if [ ! -d "$swapdir" ];then
		loggit "The virtual memory directory $swapdir does not exist. Please "
		loggit "ensure that a correct location has been specified in /etc/rc "
		loggit "and that the virtual memory directory actually exists. "
		loggit "Virtual memory cleanup aborted."
	else
		cd "$swapdir"
		if [ $? -eq 0 ] && [ `pwd` = "$swapdir" ];then #	double check this
			loggit -n "Removing swap files: "
			$RM -vfd "${swapdir}/"swapfile* | tee -a "$LOGFILE"
#			if find "$swapdir" \( -name 'swapfile*' -o -name 'sleepimage' \) -exec $RM -vfd {} \; | tee -a "$LOGFILE"
			loggit "Done."
			echo ""

			# Should only be applicable to system versions >= 10.4
			# TODO: move this to advanced mode?
			if [ $AUTO -eq 0 ] && [ -e "sleepimage" ];then #	Only run this option if auto mode is off.
				echo -en "Would you like to delete your safe sleep image? [${bH}y${eH}/${bH}n${eH}]: ${bK}"
				read ANS
				echo -e "${eK}"
				if [ "$ANS" = "y" ];then
					# remove sleepimage
					loggit -n "Removing the safe sleep image: "
					$RM -vf "${swapdir}/"sleepimage | tee -a "$LOGFILE"
					loggit "Done."
					echo ""
				fi
			fi

			# Should only be applicable to system versions >= 10.4
			if [ -d "app_profile" ];then
				cd "app_profile"
				# remove app_profile contents
				loggit -n "Removing VM working sets: "
				$RM -vf "${swapdir}/app_profile/"*
				loggit "Done."
				echo ""
			fi
		else
			loggit "Could not change working directory to $swapdir."
			loggit "Virtual memory cleanup has been aborted."
		fi
		cd "$SANDBOX"
	fi
}


function cacheCleanup () {
	loggit -n "Cache file cleanup"
	countDown
	if [ $WRITEABLEROOT -ne 1 ];then
		mountem	#	Make sure disks are mounted first
	fi
	loggit -n "Removing system cache files: "
	#	-v option makes the rm command verbose
	if [ -d "/System/Library/Caches" ];then
		find /System/Library/Caches/* -exec $RM -Rvf {} \; 2>/dev/null | tee -a "$LOGFILE"
	fi
	if [ -d "/Library/Caches" ];then
		if [ "$DEEP" -eq "1" ]; then
			find /Library/Caches/* -exec $RM -Rvf {} \; 2>/dev/null | tee -a "$LOGFILE"
		else
			find /Library/Caches/* ! -name 'com.apple.LaunchServices*' ! -name 'com.apple.user*pictureCache.*' ! -name 'com.apple.dock.iconcache*' -exec $RM -Rvf {} \; 2>/dev/null | tee -a "$LOGFILE"
		fi
	fi
	if [ $ANIMAL -eq 2 ];then $RM -vf /private/var/db/NetworkInterfaces.xml 2>/dev/null | tee -a "$LOGFILE"; fi
	for cf in "/private/var/db/volinfo.database" "/private/var/db/BootCache.playlist" "/private/var/db/prebindOnDemandBadFiles" "/System/Library/Extensions.kextcache" "/System/Library/Extensions.mkext"; do
		if [ -f "$cf" ];then
			$RM -fv "$cf" 2>/dev/null | tee -a "$LOGFILE"
		fi
	done
	loggit "Done removing system cache files."
	loggit ""
	if [ $AUTO -eq 0 ];then #	Only run this option if auto mode is off.
		echo "Would you like to find and remove known cache files for a specific "
		echo -en "user? [${bH}y${eH}/${bH}n${eH}]: ${bK}"
		read ANS
		echo -e "${eK}"
		if [ "$ANS" = "y" ];then
			while [ "$ANS" = "y" ];do
				chooseUserDirectory
				cachedir="${ud}/Library/Caches"
				if [ -d "$cachedir" ];then
					cd "$cachedir"
					if [ $? -eq 0 ] && [ `pwd` = "$cachedir" ];then	#	Double check we're in the right place
						loggit "Removing files in $cachedir:"
						if [ "$DEEP" -eq "1" ];then
							$RM -Rvf "${cachedir}/"* 2>/dev/null | tee -a "$LOGFILE"	#	Silence error output on empty directories
						else	#	Currently, the commands here are identical
							$RM -Rvf "${cachedir}/"* 2>/dev/null | tee -a "$LOGFILE"
						fi
						CONTINUE=1
						loggit "Done. -$?-"
					else
						loggit "Unable to switch to $cachedir for processing."
						loggit "Directory appears to be invalid."
						CONTINUE=0
					fi
					cd "$SANDBOX"
				else
					loggit "$cachedir does not exist or is not a valid directory."
					CONTINUE=0
				fi
				echo ""
				echo "Would you like to find and remove known cache files for another "
				echo -en "user? [${bH}y${eH}/${bH}n${eH}]: ${bK}"
				read ANS
				echo -e "${eK}"
			done
		else
			loggit "User cache files untouched."
		fi
	fi
	loggit "Done with cache file clean up task."
}


function fixPermissions () {
	loggit -n "Permissions repair"
	countDown
	mountem #	Make sure disks are mounted.
	echo "Repairing permissions (This takes time. Please wait.):"
	progress diskutil "+" 5 &
	diskutil repairPermissions / | tee -a "$LOGFILE"
	wait
	loggit "Permissions have been repaired. -$?-"	#TODO: Fix this exit status. This is bogus.
}


function restart() {
	loggit -n "Restarting `hostname`"
	countDown
	loggit "$GOODBYE"
	loggit ""
	reboot
}


function shutDown() {
	loggit -n "Shutting down `hostname`"
	countDown
	loggit "$GOODBYE"
	loggit ""
	shutdown -h now
}


function quitScript() {
	loggit "Exiting the script."
	echo "If you have modified the disk at all, you should restart the computer "
	echo "before continuing to work."
	echo -en "Would you like to ${bH}r${eH}estart your computer, or s${bH}h${eH}ut down? ${bK}"
	read ANS
	echo -en "${eK}"
	case "$ANS" in
		"r" | "R" ) restart;exit $EX_OK;;
		"h" | "H" ) shutDown;exit $EX_OK;;
		*	) loggit "$GOODBYE";echo "${bPar}To restart your computer from the command line, just type 'reboot'${ePar}";loggit "";exit $EX_OK;;
	esac
}


function selectNext()  {
	ANS="NOT_NULL" #	We set this to keep it from being null at the outset
	echo ""
	if [ -z "$AUTO" ];then #show this option only first time through.
		echo -e "\033[4m                             AppleJack                               \033[0m"
		echo ""
		echo "Enter the associated number or letter to select the next task."
		echo -e "It is ${bS}strongly${eS} recommended you do them in the order listed!"
		echo ""
		echo -e "[${bK}${TASKCODES[0]}${eK}] ${TASKNAMES[0]}. AppleJack will do all tasks sequentially."
		echo ""
		AUTO=0	#	and set AUTO, so it won't show again
	elif [ $AUTO -eq 0 ];then	#	Only show this if not first time, and not in auto mode.
		echo -e "\033[4m                             AppleJack                               \033[0m"
		echo ""
		echo "Choose the next task..."
		echo ""
	fi
	if [ $AUTO -eq 0 ];then	#	Only show menu if Auto is not running
		#	Really wish bash supported multi-dimensional arrays
		I=1
		let "TASKLIST=${#TASKS[@]}-1"
		while [ "$I" -lt "$TASKLIST" ];do	#	We want to list quit option in a separate format
			#	echo "[$I] or [${TASKCODES[$I]}] : ${TASKNAMES[$I]}"
			echo -e "[${bK}$I${eK}] ${TASKNAMES[$I]}"; #	Users found it confusing to have two options for activating a task.
			let "I=$I+1"
		done
		echo ""
#		echo -e "[${bK}V${eK}] : Ad${bK}v${eK}anced Menu."
		echo ""
		echo -en "Your choice ${bPar}Just hit return to quit${ePar}: ${bK}"
		read ANS
		echo -en "${eK}"
	else	#	AUTO MODE
		ANS=$AUTO
		echo ""
		let "AUTO=$AUTO+1"	#increment AUTO
		if [ $AUTO -gt 1 ];then	#	Only give these options if returning to the menu from another task.
			if [ "$AUTO" -eq "${#TASKS[@]}" ];then	#	We're at the last item, which is quit
				#	If user specified automatic restart or shutdown at runtime, quit automatically.
				case "$POSTSCRIPT" in
					"restart"	) restart;exit $EX_OK;;
					"shutdown"	) shutDown;exit $EX_OK;;
					*	) echo "Finished."; quitScript;;	#	Else, quit manually
				esac
			else
				echo "AppleJack auto mode: selecting task $ANS"
				taskDescription=`echo ${TASKNAMES[$ANS]} | $SED -e 's/\\\033\[[0-9]*m//g'`
				loggit "AppleJack will ${bS}${taskDescription}${eS} in $CANCELTIME seconds. "
				echo -en "[${bH}s${eH}kip this task/${bH}q${eH}uit AppleJack]${bK} "
				read -t $CANCELTIME RESP[$AUTO] <&1	#	Set different reply depending on which step is being done.
				echo -ne "${eK}"
				if [ ! -z "${RESP[$AUTO]}" ];then	#	Guess I could also just reset the variable to null each time.
					case "${RESP[$AUTO]}" in
						"s" | "S"	) echo "";loggit "${TASKNAMES[$ANS]} skipped.";selectNext;;
						*	)	ANS="";; #	Set to null so we quit later.
					esac
				fi
			fi
		fi
		echo ""
	fi
	if [ ! -z "$ANS" ];then	#	If user doesn't want to quit, continue
		I=0
		let "TASKCOUNT=${#TASKNAMES[@]}"
		while [ "$I" -lt "$TASKCOUNT" ];do
			if [[ "$ANS" = "${TASKCODES[$I]}" || "$ANS" = "$I" || "$ANS" = "${TASKCODESUC[$I]}" ]];then
				eval "${TASKS[$I]}"	#	Run associated task
				selectNext
			fi
			let "I=$I+1"
		done
		#	If you're here, you're probably wanting the advanced menu, or you typed a wrong key
		if [[ "$ANS" = "v"  || "$ANS" = "V" ]]; then
			advancedMenu
		else
			echo "Ooops! Looks like you typed the wrong key."
			selectNext
		fi
	else	#	Let user quit, if they want to
		quitScript
	fi
}

########################################################################
#	EXPERT FUNCTIONS UNDER DEVELOPMENT #################################
########################################################################
function xBlessOS9() {
	mountem	#	Make sure disks are available for r/w
	loggit "Bless OS9 Folder"
	countDown
	find /Volumes -maxdepth 2 -type d -name "System Folder" -print
	ls / | $GREP "System Folder"
	xPickOS9SystemFolder
	echo -n "Would you also like to start up from $os9sf on restart? [${bK}y${eK}/${bK}n${eK}]: ${bK}"
	read ANS
	echo -e "$eK"
	if [ "$ANS" = "y" ];then
		use9="-use9"
		fb="bless or use"
		fbs="blessed and can be used at restart."
	else
		use9=""
		fb="bless"
		fbs="blessed"
	fi
	out=`bless -folder9 "$os9sf" "$use9"  2>&1`
	res=$?
	if [ "$res" -ne "0" ];then
		loggit "Could not $fb the system folder because: "
		loggit "$out"
	else
		loggit "System folder $fbs. $out"
	fi
	loggit "Done."
}
function xPickOS9SystemFolder() {
	echo -n "Enter the location of the OS9 System Folder you want to bless: "
	read ANS
	if [ ! -d "$ANS" ];then
		echo "$ANS does not exist. Maybe you mistyped it. Please try again."
		xPickOS9SystemFolder
	fi
	os9sf="$ANS"
}


function xDeleteSysConfigFiles() {
	case "$ANIMAL" in
	#TODO: let's not delete these; let's move them somewhere safe. /Library/Application Support/AppleJack?
		2 ) loggit "Moving System Configuration preference files from /private/var/db to /private/var/db.old";
$RM -v /private/var/db/* | tee -a "$LOGFILE";;
		3 ) $RM -v /private/var/db/*.xml | tee -a "$LOGFILE";
			$RM -v /Library/Preferences/SystemConfiguration/* | tee -a "$LOGFILE";;
		*	) echo "oh oh";;
	esac
}


function xDeepCacheClean() {
#	This will remove cached items at the machine and system level, with the option to do the same at the user level
	loggit "Deep cache clean. ${bPar}Also available in AUTO mode.${ePar}"
	DEEP=1
	cacheCleanup
}


function xDisableUserLoginItems() {
	mountem
	loggit -n "Disable login items for which user?"
	chooseUserDirectory	#	This function sets the value for ud, user directory
	loggit "Making backup file at $ud/Library/Preferences/loginwindow.plist.bak"
	$CP -v "$ud/Library/Preferences/loginwindow.plist" "$ud/Library/Preferences/loginwindow.plist.bak"
	loggit "Disabling login items in $ud"
	defaults delete "$ud/Library/Preferences/loginwindow" "AutoLaunchedApplicationDictionary"
	loggit "Done."
}

function xDisableAutoLogin() {
	mountem	#	Make sure disks are available for r/w
	#	Need to confirm username here
	#	Does the following only work in Jaguar?
	#	in panther, or Tiger, do we need this?
	#/sbin/SystemStarter start NetInfo ?
	loggit -n "Disabling auto loging for $1"
	countDown
	case "$ANIMAL" in
		2 ) nicl -raw /private/var/db/netinfo/local.nidb delete /localconfig/autologin username;;
		3 ) defaults delete /Library/Preferences/com.apple.loginwindow autoLoginUser;;
		4 ) defaults delete /Library/Preferences/com.apple.loginwindow autoLoginUser;;
		*	) echo "oh oh";;
	esac
}


function xDisableNFSMounts() {
	mountem	#	Make sure disks are available for r/w
	loggit -n "Disabling NFS mounts"
	countDown
	nicl -raw /private/var/db/netinfo/local.nidb create disabled
	nicl -raw /private/var/db/netinfo/local.nidb move mounts disabled
}


#TODO:	(advanced) function for allowing the user to "setup" their mac again
function xEnableNewSetup() {
	mountem	#	Make sure disks are available for r/w
	loggit -n "Enabling new computer setup"
	countDown
	if [ -f /private/var/db/.AppleSetupDone ]; then
		loggit -n "Removing the setup flag file: "
		$RM -v /private/var/db/.AppleSetupDone
	else
		loggit "The Apple Setup flag has been removed from your system. You should be "
		loggit "able to setup your system upon your next restart."
	fi
	loggit "Done."
}

#TODO: Shouldn't this be done before all services are started up?
# you could do this like this: create /usr/local/applejack/startupscript with 
# the following contents:
# !/bin/bash
# /usr/local/bin/memtest all 1
function xMemTest() {
	loggit -n "Running memory test"
	countDown
	/usr/local/applejack/memtest all 1
	ES=$?
	if [ "$ES" = "0" ];then
		echo "Memory test was successfull. Your RAM is probably fine. -${ES}-"
	else
		echo "Memory test gave an error.  -${ES}-"
	fi

}
########################################################################
#	END: EXPERT FUNCTIONS UNDER DEVELOPMENT ############################
########################################################################
#	Experimental development for advanced features.
function advancedMenu()  {
	ANS="NOT_NULL" #	We set this to keep it from being null at the outset
	echo ""
	echo -e "\033[4m                       AppleJack ADVANCED Menu                       \033[0m"
	echo "These functions are experimental at this stage. If you experience "
	echo "any problems, please file a bug report at "
	echo "http://sf.net/projects/applejack"
	echo ""
	echo "Choose the next task..."
	echo ""
	#	Really wish bash supported multi-dimensional arrays
	I=1
	let "xTASKLIST=${#xTASKS[@]}-1"
	while [ "$I" -lt "$xTASKLIST" ];do	#	We want to list quit option in a separate format
		#	echo "[$I] or [${xTASKCODES[$I]}] : ${xTASKNAMES[$I]}"
		echo -e "[${bK}$I${eK}] ${xTASKNAMES[$I]}"; #	Users found it confusing to have two options for activating a task.
		let "I=$I+1"
	done
	echo ""
#		echo -e "[${bK}${xTASKCODES[$I]}${eK}] : Just ${xTASKNAMES[$I]}, thank you very much."
	echo ""
	echo -en "Your choice ${bPar}Just hit return to quit${ePar}: ${bK}"
	read ANS
	echo -en "${eK}"
	taskDescription=`echo ${xTASKNAMES[$ANS]} | $SED -e 's/\\\033\[[0-9]*m//g'`
	loggit "AppleJack will ${bS}${taskDescription}${eS} in $CANCELTIME seconds. "
	echo -en "[${bH}s${eH}kip this task/${bH}q${eH}uit AppleJack]${bK} "
	read -t $CANCELTIME RESP[$AUTO] <&1	#	Set different reply depending on which step is being done.
	echo -ne "${eK}"
	if [ ! -z "${RESP[$AUTO]}" ];then	#	Guess I could also just reset the variable to null each time.
		case "${RESP[$AUTO]}" in
			"s" | "S"	) echo "";loggit "${xTASKNAMES[$ANS]} skipped.";selectNext;;
			*	)	ANS="";; #	Set to null so we quit later.
		esac
	fi
	echo ""
	if [ ! -z "$ANS" ];then	#	If user doesn't want to quit, continue
		I=0
		let "xTASKCOUNT=${#xTASKNAMES[@]}"
		while [ "$I" -lt "$xTASKCOUNT" ];do
			if [[ "$ANS" = "${xTASKCODES[$I]}" || "$ANS" = "$I" || "$ANS" = "${xTASKCODESUC[$I]}" ]];then
				eval "${xTASKS[$I]}"	#	Run associated task
				advancedMenu
			fi
			let "I=$I+1"
		done
		#	If you're here, you're probably typed a wrong key
		echo "Ooops! Looks like you typed the wrong key."
		advancedMenu
	else	#	Let user quit, if they want to
		quitScript
	fi
}


########################################################################
#	START OF APPLEJACK RUNTIME #########################################
########################################################################
#	How was script invoked?
#	Check for invocation of script with command line parameter for running
#	it automatically, for example, from another script.
showusage=0
optFeedback=''
if [ ! -z "$1" ];then
	if [ "$1" = "auto" ] || [ "$1" = "AUTO" ];then
		optFeedback="Running in automatic mode"
		AUTO=1
		if [ "$1" = "AUTO" ];then
			DEEP=1
			optFeedback="$optFeedback, deep clean on"
		fi
		if [ ! -z "$2" ];then
			#	Let's test for reboot as well as restart, for compatibility reasons
			if [ "$2" = "restart" ] || [ "$2" = "reboot" ];then
				optFeedback="$optFeedback, with automatic restart"
				POSTSCRIPT="restart"
			elif [ "$2" = "shutdown" ];then
				optFeedback="$optFeedback, with automatic shutdown"
				POSTSCRIPT="shutdown"
			else
				# incorrect options specified
				badopt="$2"
				showusage=1
			fi
		else
			POSTSCRIPT="manual"
			optFeedback="$optFeedback, with manual exit"
		fi
	else
		# incorrect options specified
		showusage=1
		badopt="$1"
	fi
fi
if [ $showusage -eq 1 ];then
	echo ''
	echo "AppleJack $VERSION: Invalid option '$badopt'"
	echo 'USAGE: applejack [auto|AUTO [restart|shutdown]]'
	echo 'type `man applejack` for more details'
	echo ''
	exit $EX_USAGE
fi
#	Before doing anything, let's move our working directory to the safe sandbox.
#	by running the script from the SANDBOX directory, we hope to minimize damage from any bugs.
if [ -d "/tmp" ];then
	SANDBOX="/tmp"
elif [ -d "/private/var/tmp" ]; then
	SANDBOX="/private/var/tmp"
else	#	In a pinch, we use this
	SANDBOX="/Library/Caches"
fi
cd "$SANDBOX"
#	Okay, first let's prepare for logging...
#	touching the log file helps us see if file system is writable and 
#	therefore what mode of logging to start with.
if touch "$LOGFILE" >/dev/null; then 
	#	on success [exit status 0]
	WRITEABLEROOT=1
else
	WRITEABLEROOT=0
	TEMPLOG=""
fi
loggit "**********************************************************************"
loggit "* AppleJack $VERSION, $COPYRIGHT*"
echo "* - AppleJack comes with ABSOLUTELY NO WARRANTY                      *"
echo "* - This is free software, and you are welcome to redistribute it    *"
echo "*   under certain conditions, as specified in the GPL LICENSE you    *"
echo "*   read during installation of this product. If you can't find the  *"
echo "*   license, please get your copy at http://www.opensource.org       *"
echo "*                                                                    *"
echo "* USAGE ${bPar}interactive${ePar}: Just run through the tasks in the menu below, *"
echo "*   in ascending order, and let AppleJack fix your machine.          *"
echo "* USAGE ${bPar}automatic mode${ePar}: To start AppleJack in auto mode, type:     *"
echo "*   'applejack auto'                                                 *"
echo "*   'applejack auto restart' (restarts computer when done)           *"
echo "*   'applejack auto shutdown' (shuts down the computer when done)    *"
echo "*   To do a deep clean of the system, use AUTO instead of auto.      *"
echo "*   Please see the man page for details: 'man applejack'             *"
echo "*                                                                    *"
echo "* Donations gratefully accepted at http://applejack.sourceforge.net  *"
echo "**********************************************************************"
echo ""
D=`date`
loggit "$D. Gathering information..."
loggit "$optFeedback"
#	Let's find out who this user is
#	Sets user id to ${IDENTITY[0]} and user name to ${IDENTITY[1]}
declare -a IDENTITY=( `id | cut -d '=' -f 2 | cut -d ' ' -f 1 | $SED -e 's/[()]/ /g;'` )
loggit -n "- User ID: ${IDENTITY[0]}, NAME: ${IDENTITY[1]} | "
if [ "${IDENTITY[0]}" != "0" ];then
	echo ""
	echo -e "${bE}You are not authorized as the root user. AppleJack must quit. ${eE}"
	exit $EX_USAGE
fi
#	Okay, are we in single user mode?
SUM=`id | $GREP -E '[^0]\('`	#	In single user mode, SUM should be empty.
if [ ! -z "$SUM" ];then
	loggit ""
	loggit "!!! ${bW}WARNING: You are not running AppleJack in single user mode!  !!${eW}"
	loggit "!!! ${bW}Certain tasks can cause your operating system to crash.      !!${eW}"
	loggit "!!! ${bW}Proceed at your own risk.                                    !!${eW}"
	echo "(For Single User Mode: Press and hold command and s immediately after restart.)"
	loggit ""
fi
#	Let's find out Mac OS X version in order to start the right services.
OSV=`sw_vers | $AWK '/ProductVersion/ { print $2 }'`
loggit "- OS Version: $OSV"
#	TODO: Look for netinfo dB in standard location, and allow user to input their location if not found.
#	Check for location of swapdir
swapdir=`$GREP -E "^[^#]*swapdir=[/\"']" /etc/rc | $SED -e 's/"//g' -e "s/'//g" | cut -f 2 -d =`
if [ ! "$swapdir" = "" ];then
	loggit "- Virtual memory directory appears to be $swapdir."
else
	loggit "${bW}WARNING: Could not find location of VM directory in /etc/rc${eW}"
	echo 'Make sure $swapdir is declared in a standard way. As a temporary'
	echo 'workaround, please enter the correct VM directory location at the '
	echo 'prompt. Or just hit return to accept the default location '
	echo -n "${bPar}/private/var/vm${ePar} instead. [enter directory]: "
	read ANS
	if [ ! "$ANS" = "" ];then
		swapdir=$ANS
		loggit "- Using $ANS as the swap file location."
	else
		swapdir="/private/var/vm"
		loggit "- Using default /private/var/vm location."
	fi
fi
if [ ! -d "$swapdir" ];then
	loggit "${bW}WARNING! Swap directory $swapdir does not appear to exist. "
	echo -e "Proceed with caution${eW}"
fi
#	Check if root file system is journaled
#	(Issuing the mount command without parameters simply lists volumes)
if mount | $GREP 'on / (local' | $GREP 'journal' 1>/dev/null;then 
	JOURNALED=true
	loggit "- Local root filesystem is journaled"
else 
	JOURNALED=false
fi

#	OS Specific Tests
ANIMAL=`echo $OSV | cut -f 2 -d .`
case "$ANIMAL" in
	1	) STATUSMSG="AppleJack is not supported in Mac OS X 10.1.x systems. It's advisable to not use it unless you absolutely have to. Permissions repair will not work in 10.1 systems.";;
	2	)	#	The service in Jaguar, when all services are started is /sbin/autodiskmount -va
			PSS=`ps -axo command | $GREP '/sbin/autodiskmount -va' | $GREP -v 'grep'`
			if [ ! -z "$PSS" ]; then
				MOUNTALL=true
				STATUSMSG="All supporting services for Jaguar appear to be running."
			fi;;
	3	) 
			#	Here, see if you can test for whether DiskArb is already up and running, 
			#	These are the processes that register_mach_bootstrap starts:
			#	/usr/sbin/configd, /usr/sbin/diskarbitrationd, /usr/sbin/notifyd, /usr/sbin/lookupd, /usr/libexec/ioupsd
			PSS=`ps -axco command`
			M=0
			CT=0
			CS="diskarbitrationd configd notifyd ioupsd lookupd"
			for C in $CS;do
				let "CT=$CT+1"
				for PS in $PSS;do
					if [ "$C" = "$PS" ];then
						let "M=$M+1"
						break
					fi
				done
			done
			if [ $CT -eq $M ];then
				BOOTSTRAPPED=true
			fi
			#	These are the processes that are added after SystemStarter start Disks
			#	/System/Library/CoreServices/coreservicesd, /usr/sbin/distnoted, /System/Library/CoreServices/SecurityServer
			M=0
			CT=0
			CS="coreservicesd distnoted SecurityServer"
			for C in $CS;do
				let "CT=$CT+1"
				for PS in $PSS;do
					if [ "$C" = "$PS" ];then
						let "M=$M+1"
						break
					fi
				done
			done
			if [ $CT -eq $M ];then
				DISKS=true
			fi
			if [ $BOOTSTRAPPED ] && [ $DISKS ];then
				MOUNTALL=true
				STATUSMSG="All supporting services for Panther appear to be running."
			fi;;
	*	) 	#	These are the processes that register_bootstrap starts:
			#	/usr/sbin/configd, /usr/sbin/memberd, /usr/sbin/securityd, /usr/sbin/diskarbitrationd, /usr/sbin/notifyd, /usr/sbin/lookupd, DirectoryService
			PSS=`ps -axco command`
			M=0
			CT=0
			CS="diskarbitrationd configd memberd notifyd securityd lookupd DirectoryService"
			for C in $CS;do
				let "CT=$CT+1"
				for PS in $PSS;do
					if [ "$C" = "$PS" ];then
						let "M=$M+1"
						break
					fi
				done
			done
			if [ $CT -eq $M ];then
				BOOTSTRAPPED=true
			fi
			if [ $BOOTSTRAPPED ];then
				MOUNTALL=true
				STATUSMSG="All supporting services for Tiger appear to be running."
			fi;;
esac

if [[ ! -z "$STATUSMSG" ]];then
	loggit "- $STATUSMSG"
fi

#	TODO: Output warning for bad environment
if [ $BADENV -ne 0 ];then
	loggit "${bW}WARNING: Some necessary commands could not be found in their standard locations.${eW}"
	echo 'If you have installed custom binaries or otherwise modified the'
	echo 'operating environment, you may experience problems.'
fi
########################################################################
#	APPLEJACK READY; PRESENT MENU ######################################
########################################################################
selectNext

#Script should never reach this, but just in case...

echo -e "\a"
exit $EX_SOFTWARE
