#! /bin/bash

#for i in `cat /Users/bbelyeu/desktop/machines.txt`;
#do
	scp /Library/Scripts/Shell\ scripts/OPUBCOweekly.sh dtsvcs@$1:/Library/Scripts
	scp /Library/Scripts/Shell\ scripts/asset_tag.sh dtsvcs@$1:/Library/Scripts
	scp -p /Volumes/macaccess/TECH\ FOLDER/BBelyeu/Maintenance\ Script\ Stuff/root\ cronjob\ goes\ in\ var-cron-tabs/root dtsvcs@$1:/Users/dtsvcs
#done