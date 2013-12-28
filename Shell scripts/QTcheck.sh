#! /bin/bash

/bin/ps -ax | /usr/bin/grep "QuickTime Player.app" | /usr/bin/grep ??
if [ $? -eq 1 ]
	then /usr/bin/open /Users/mmmbpro/Public/Drop\ Box/presentmovie.app
fi
